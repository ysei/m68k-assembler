
(in-package :m68k-assembler)

;;;; PSEUDO-OPS

(defparameter *asm-pseudo-op-table*
  `(("SECTION" ,(lambda (label op operands modifier)
		  (declare (ignore op modifier))
		  (handle-label-normally label)
		  (format t "~&changing to section ~A" (first operands))))
    ("INCLUDE")
    ("INCBIN")
    ("EVEN" ,(lambda (label op operands modifier)
		(declare (ignore op modifier operands))
		(handle-label-normally label)
		(unless (evenp *program-counter*)
		  (output-data 0 8))))
    ("CNOP") ; offset,align -- offset+(PC+align-1)&~(align-1)
    ("MACRO"
     ,(lambda (label op operands modifier)
         (declare (ignore op operands modifier))
	 ;; if *defining-macro-p* is already set, cry foul.
	 (assert (not *defining-macro-p*))
	 (assert label)
         ;; otherwise, clear out *macro-buffer*.
	 (setf *macro-buffer* (list (second label))
	       *defining-macro-p* t)))
    ("ENDM"
     ,(lambda (label op operands modifier)
         (declare (ignore label op operands modifier))
	 (assert *defining-macro-p*)
	 (setf *macro-buffer* (nreverse *macro-buffer*)
	       *defining-macro-p* nil)
	 (add-to-symbol-table (first *macro-buffer*)
			      (list 0 (cdr *macro-buffer*))
			      :type 'macro)))
    ("REPT"
     ,(lambda (label op operands modifier)
         (declare (ignore label op modifier))
	 (assert (not *defining-rept-p*))
	 (setf *rept-buffer* (list (absolute-value (first operands)))
	       *defining-rept-p* t)))
    ("ENDR"
     ,(lambda (label op operands modifier)
         (declare (ignore label op operands modifier))
	 (assert *defining-rept-p*)
	 (setf *rept-buffer* (nreverse *rept-buffer*)
	       *defining-rept-p* nil)
	 (dotimes (i (pop *rept-buffer*))
	   (dolist (x *rept-buffer*)
	     (process-line x)))))
    ("DC" ,(lambda (label op operands modifier)
	      (declare (ignore op))
	      (handle-label-normally label)
	      (unless modifier (setf modifier 'word))
	      (dolist (x operands)
		(let ((data (absolute-value x))
		      (length (ecase modifier (byte 8) (word 16) (long 32))))
		  (if (consp data)
		      (push (make-backpatch-item
			     `((,length (absolute-value ,data)))
			     length)
			    *backpatch-list*)
		      (output-data data length))))))
    ("DS" ,(lambda (label op operands modifier)
	      (declare (ignore op))
	      (handle-label-normally label)
	      (unless modifier (setf modifier 'word))
	      (assert (eql (car (first operands)) 'absolute))
	      (let ((data (absolute-value (first operands)))
		    (length (ecase modifier (byte 8) (word 16) (long 32))))
		(unless (integerp data)
		  (error "Error at ~A: Need to be able to resolve DS immediately." *source-position*))
		(output-data 0 (* data length)))))
    ("DCB") ; constant block -- number,value
    ("EQU" #'define-equate)
    ("=" #'define-equate)
    ;; EQUR ? (register equate)
    ;; IFEQ etc etc
    ("XDEF")
    ("XREF")
    ("ORG")
    ("END")))

;;;; MACROS

;; Devpac macros -- when we see a macro start, collect until the ENDM,
;; so we can expand ourselves.  Note that macros have their names
;; stored in a separate symbol table, for devpac compatibility.

 ;;; XXX maybe merge macro and repeat buffers?  I don't think macro
 ;;; and repeat can happen at the same time, anyway.
(defvar *defining-macro-p* nil)
(defvar *macro-buffer*)
(defvar *defining-rept-p* nil)
(defvar *rept-buffer*)

(defun define-equate (label op operands modifier)
  (declare (ignore op modifier))
  (unless label
    (error "~A: EQU always needs a label." *source-position*))
  ;; XXX should probably check operands length etc
  (add-to-symbol-table label (resolve-expression (first operands))
		       :type 'absolute))


(defun macro-count (macro)
  (first macro))
(defun macro-body (macro)
  (second macro))
(defun (setf macro-count) (value macro)
  (setf (first macro) value))


(defun execute-macro (name operands)
  (let ((op-subs '("\\1" "\\2" "\\3" "\\4" "\\5" "\\6" "\\7" "\\8" "\\9"))
	(sub (list (cons '(symbol "\\@")
			 `(symbol ,(format nil "_~D"
					   (incf (macro-count (get-symbol-value name)))))))))
    (do ((x-> operands (cdr x->))
	 (y-> op-subs (cdr y->)))
	((or (null x->) (null y->)))
      (push (cons `(symbol ,y->) (car x->)) sub))

    (dolist (x (macro-body (get-symbol-value name)))
      (process-line (sublis sub x :test #'equal)))))


;;;; SYMBOL TABLE

(defvar *symbol-table* nil)

(defun add-to-symbol-table (sym value &key (type 'relative))
  (cond ((consp sym)
	 (when (eql (first sym) 'label) (setf sym (second sym)))
	 (assert (eql (first sym) 'symbol))
	 (setf (gethash (second sym) *symbol-table*)
	       (list type value *source-position*)))
	(t (error "Not sure how to handle this symbol: ~A." sym))))

(defun get-symbol-value (sym)
  (when (consp sym)
    (when (eql (first sym) 'label) (setf sym (second sym)))
    (setf sym (second sym)))
  (awhen (gethash sym *symbol-table*) (second it)))

(defun get-symbol-type (sym)
  (when (consp sym)
    (when (eql (first sym) 'label) (setf sym (second sym)))
    (setf sym (second sym)))
  (awhen (gethash sym *symbol-table*) (first it)))

(defun asm-symbol-text (sym)
  (if (eql (car sym) 'absolute)
      (second (second sym))
      (second sym)))

;;;; BACKPATCHING

(defvar *backpatch-list* nil)

(defun make-backpatch-item (data length)
  (list data length *program-counter*
	(file-position *object-stream*) *source-position*))

;;;; HELPER FUNCTIONS

(defun resolve-expression (expression)
  "Try and get a numerical value from this expression.  Returns the
further simplified expression, which will be an atom if everything was
resolved."
  (flet ((bin-op (sym fn)
	   (assert (= (length expression) 3))
	   (let ((a (resolve-expression (second expression)))
		 (b (resolve-expression (third expression))))
	     (if (and (integerp a) (integerp b))
		 (funcall fn a b)
		 (list sym a b)))))
    (if (atom expression)
	(cond ((integerp expression) expression)
	      ((stringp expression) (string->int expression))
	      (t (error "Unknown expression atom: ~A" expression)))
	(case (car expression)
	  (+ (bin-op '+ #'+))
	  (- (bin-op '- #'-))
	  (* (bin-op '* #'*))
	  (/ (bin-op '/ #'/))
	  (& (bin-op '& #'logand))
	  (or (bin-op 'or #'logior))
	  (^ (bin-op '^ #'logxor))
	  (<< (bin-op '<< #'ash))
	  (>> (bin-op '<< #'(lambda (n count) (ash n (- count)))))
	  (~ (aif (resolve-expression (second expression))
		  (lognot it)
		  expression))
	  (symbol (aif (get-symbol-value expression)
		       it
		       expression))
	  (t expression)))))


;;;; "MAIN" STUFF

;;; XXX should this be maintained by the lexer instead?
(defvar *file-list* nil
  "Stack of file names that are actively open; checked by INCLUDE to
determine whether recursive nesting is occuring.")

(defvar *source-position*)

(defvar *object-stream*)
(defvar *program-counter*)

(defun assemble (file)
  ;; create symbol table
  (setf *symbol-table* (make-hash-table :test 'equal)
	;; init program counter
	*program-counter* 0
	;; create backpatch list
	*backpatch-list* nil
	;; init macro variables
	*defining-macro-p* nil *defining-rept-p* nil)
  ;; open file and start processing
  (init-lexer file)
  (with-open-file (in-stream file)
    ;; create object file tmp (write header, start output section)
    (with-open-file (*object-stream* "foo.bin" :direction :output
				     :element-type 'unsigned-byte
				     :if-exists :overwrite
				     :if-does-not-exist :create)
      (process-file in-stream)

      ;; go through backpatch list, try to make all patches
      (dolist (x *backpatch-list*)
	(destructuring-bind (template length *program-counter*
			     file-position *source-position*) x
	  (multiple-value-bind (data len) (generate-code template nil nil)
	    (when (consp data)
	      (error "Failed to backpatch @ ~A/~A: ~S."
		     *program-counter* *source-position* data))
	    (assert (= len length))
	    (assert (file-position *object-stream* file-position))
	    (output-data data len))))
      ;; finalize object file (write symbol table, patch header)
      )))

(defun process-file (in-stream)
  (handler-case
      (loop
       ;; we strip individual token position information here, which
       ;; might suck for superfine debugging/warning precision, but
       ;; we really don't need all that clutter.
       (multiple-value-bind (line *source-position*)
	   (unclutter-line (parse (lambda () (next-token in-stream))))
	 (assert (eql (pop line) 'line))

	 ;; if we're in a macro or repeat, accumulate this line.
	 (cond (*defining-macro-p*
		(if (and (eql (operation-type-of-line line) 'pseudo-op)
			 (string-equal (opcode-of-line line) "ENDM"))
		    (process-line line)
		    (push line *macro-buffer*)))
	       (*defining-rept-p*
		(if (and (eql (operation-type-of-line line) 'pseudo-op)
			 (string-equal (opcode-of-line line) "ENDR"))
		    (process-line line)
		    (push line *rept-buffer*)))
	       (t (process-line line))))) ; otherwise, process it.
    (end-of-file)))

(defun operation-type-of-line (line)
  (awhen (cadr (find 'operation line :key #'car))
    (car it)))

(defun opcode-of-line (line)
  (awhen (cadr (find 'operation line :key #'car))
    (caadr it)))

(defun process-line (line)
  (let ((label (find 'label line :key #'car))
	(operation (cadr (find 'operation line :key #'car)))
	(operands (mapcar #'simplify-operand 
			  (extract-operands line))))
    (cond ((eql (operation-type-of-line line) 'opcode)
	   (assemble-opcode label operation operands))
	  ((eql (operation-type-of-line line) 'pseudo-op)
	   (assemble-pseudo-op label operation operands))
	  (t
	   (when label
	     ;; might be a macro or something... see if it
	     ;; exists, first.  and complain about
	     ;; redefinition, except in the case of locals.
	     (case (get-symbol-type label)
	       (macro (execute-macro (second label) operands))
	       (relative (format t "~&redef ~A at ~S" label *source-position*))
	       (t (handle-label-normally label))))))))

(defun handle-label-normally (label)
  (when label
    (add-to-symbol-table (second label) *program-counter*)))

(defun assemble-opcode (label operation operands)
  (let ((opcode (caadr operation))
	(modifier (string-to-modifier (cadadr operation))))
    (handle-label-normally label)
    (awhen (find-matching-entry opcode operands modifier)
      (multiple-value-bind (data len)
	  (generate-code (second it) operands modifier)
	(when (consp data)
	  (push (make-backpatch-item data len) *backpatch-list*)
	  (setf data #x4E714E71))	; Output NOP if all else fails.
	(output-data data len)))))


(defun assemble-pseudo-op (label operation operands)
  (let* ((opcode (caadr operation))
	 (modifier (string-to-modifier (cadadr operation)))
	 (entry (cadr (find opcode *asm-pseudo-op-table*
			    :key #'car :test #'string-equal))))
    (when (functionp entry)
      (funcall entry label opcode operands modifier))))


(defun output-data (data length)
  "Outputs DATA in big-endian order to the currently active temporary
object file and updates the program counter.  Returns the address to
which the data assembled."
  (unless (zerop (mod length 8))
    (setf length (ash (ceiling (/ length 8)) 3)))
  (incf *program-counter* (ash length -3))
  (do ((pos (- length 8) (- pos 8)))
      ((< pos 0))
    (write-byte (ldb (byte 8 pos) data) *object-stream*)))


;;;; EOF assembler.lisp
