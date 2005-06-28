;;;; (Mostly) Autogenerated by LALR-PARSER-GENERATOR


(IN-PACKAGE "M68K-ASSEMBLER")
(LABELS ((UNMASH (ENTRIES)
           (LET ((HT (MAKE-HASH-TABLE)))
             (DOLIST (E ENTRIES)
               (SETF (GETHASH (CAR E)
                              HT)
                       (CDR E)))
             HT)))
  (LET ((TABLE
         (UNMASH
          '(($
             . #(NIL (ACCEPT) NIL (REDUCE LINE 1)
                 (REDUCE LABEL 1) (REDUCE OPERATION 1) (REDUCE OPERATION 1) NIL
                 (REDUCE LINE 2) (REDUCE OPERANDS 1) (REDUCE OPERAND 1)
                 (REDUCE OPERAND 1) (REDUCE OPERAND 1) (REDUCE OPERAND 1)
                 (REDUCE ABSOLUTE 1) (REDUCE INDIRECT 1) (REDUCE INDIRECT 1)
                 (REDUCE INDIRECT 1) (REDUCE INDIRECT 1) NIL
                 (REDUCE REGISTER-LIST 1) (REDUCE EXPRESSION 1) NIL NIL
                 (REDUCE TERM 1) (REDUCE FACTOR 1) NIL (REDUCE VALUE 1)
                 (REDUCE VALUE 1) NIL (REDUCE LABEL 2) (REDUCE LINE 3) NIL NIL
                 NIL NIL NIL (REDUCE ADDING-OPERATOR 1)
                 (REDUCE ADDING-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE IMMEDIATE 2) NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL NIL NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) (REDUCE OPERANDS 3)
                 (REDUCE REGISTER-LIST 3) (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) NIL (REDUCE REGISTER-LIST 3)
                 (REDUCE TERM 3) (REDUCE DISPLACEMENT-INDIRECT 3) NIL
                 (REDUCE FACTOR 3) NIL (REDUCE DISPLACEMENT-INDIRECT 4) NIL
                 (REDUCE POSTINCREMENT-INDIRECT 4) NIL
                 (REDUCE PREDECREMENT-INDIRECT 4) NIL
                 (REDUCE INDEXED-INDIRECT 5) (REDUCE INDEXED-INDIRECT 6)))
            (LINE
             . #((GOTO 1) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (LABEL
             . #((GOTO 2) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (OPERATION
             . #((GOTO 3) NIL
                 (GOTO 7) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL))
            (OPCODE
             . #((SHIFT 5) NIL
                 (SHIFT 5) NIL (REDUCE LABEL 1) NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL (REDUCE LABEL 2) NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (PSEUDO-OP
             . #((SHIFT 6) NIL
                 (SHIFT 6) NIL (REDUCE LABEL 1) NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL (REDUCE LABEL 2) NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (COLON
             . #(NIL NIL NIL NIL (SHIFT 30) NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (OPERANDS
             . #(NIL NIL NIL (GOTO 8) NIL NIL NIL
                 (GOTO 31) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (OPERAND
             . #(NIL NIL NIL (GOTO 9) NIL NIL NIL
                 (GOTO 9) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 55) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (ABSOLUTE
             . #(NIL NIL NIL (GOTO 10) NIL NIL NIL
                 (GOTO 10) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 10) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (INDIRECT
             . #(NIL NIL NIL (GOTO 11) NIL NIL NIL
                 (GOTO 11) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 11) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (IMMEDIATE
             . #(NIL NIL NIL (GOTO 12) NIL NIL NIL
                 (GOTO 12) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 12) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (DISPLACEMENT-INDIRECT
             . #(NIL NIL NIL (GOTO 15) NIL NIL NIL
                 (GOTO 15) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 15) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (POSTINCREMENT-INDIRECT
             . #(NIL NIL NIL (GOTO 16) NIL NIL NIL
                 (GOTO 16) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 16) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (PREDECREMENT-INDIRECT
             . #(NIL NIL NIL (GOTO 17) NIL NIL NIL
                 (GOTO 17) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 17) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (INDEXED-INDIRECT
             . #(NIL NIL NIL (GOTO 18) NIL NIL NIL
                 (GOTO 18) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 18) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (HASH
             . #(NIL NIL NIL (SHIFT 19) NIL
                 (REDUCE OPERATION 1) (REDUCE OPERATION 1)
                 (SHIFT 19) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (SHIFT 19) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (REGISTER-LIST
             . #(NIL NIL NIL (GOTO 13) NIL NIL NIL
                 (GOTO 13) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 13)
                 (GOTO 56) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL))
            (EXPRESSION
             . #(NIL NIL NIL (GOTO 14) NIL NIL NIL
                 (GOTO 14) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL (GOTO 44) NIL NIL
                 (GOTO 51) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 14) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL (GOTO 51)
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (TERM
             . #(NIL NIL NIL (GOTO 21) NIL NIL NIL
                 (GOTO 21) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL (GOTO 21) NIL NIL
                 (GOTO 21) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 21) NIL
                 (GOTO 57)
                 (GOTO 58) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 21) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL))
            (FACTOR
             . #(NIL NIL NIL (GOTO 24) NIL NIL NIL
                 (GOTO 24) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL (GOTO 24) NIL NIL
                 (GOTO 24) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 24) NIL
                 (GOTO 24)
                 (GOTO 24) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 24) NIL
                 (GOTO 61) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL))
            (VALUE
             . #(NIL NIL NIL (GOTO 25) NIL NIL NIL
                 (GOTO 25) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL (GOTO 25) NIL NIL
                 (GOTO 25) NIL NIL NIL
                 (GOTO 53) NIL NIL NIL NIL NIL
                 (GOTO 25) NIL
                 (GOTO 25)
                 (GOTO 25) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 25) NIL
                 (GOTO 25) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL))
            (UNARY-OPERATOR
             . #(NIL NIL NIL (GOTO 26) NIL NIL NIL
                 (GOTO 26) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL (GOTO 26) NIL NIL
                 (GOTO 26) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 26) NIL
                 (GOTO 26)
                 (GOTO 26) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (GOTO 26) NIL
                 (GOTO 26) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL))
            (OPEN
             . #(NIL NIL NIL (SHIFT 22) NIL
                 (REDUCE OPERATION 1) (REDUCE OPERATION 1)
                 (SHIFT 22) NIL NIL NIL NIL NIL NIL
                 (SHIFT 36) NIL NIL NIL NIL
                 (SHIFT 45) NIL (REDUCE EXPRESSION 1)
                 (SHIFT 45)
                 (SHIFT 52) (REDUCE TERM 1)
                 (REDUCE FACTOR 1) NIL (REDUCE VALUE 1) (REDUCE VALUE 1) NIL
                 NIL NIL (SHIFT 22) NIL
                 (SHIFT 45)
                 (SHIFT 45) NIL
                 (REDUCE ADDING-OPERATOR 1) (REDUCE ADDING-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) NIL
                 (SHIFT 45) NIL
                 (SHIFT 45)
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL NIL NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL NIL (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) NIL NIL (REDUCE TERM 3) NIL NIL
                 (REDUCE FACTOR 3) NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (CONSTANT
             . #(NIL NIL NIL (SHIFT 27) NIL
                 (REDUCE OPERATION 1) (REDUCE OPERATION 1)
                 (SHIFT 27) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL (SHIFT 27) NIL NIL
                 (SHIFT 27) NIL NIL NIL
                 (SHIFT 27) NIL NIL NIL NIL NIL
                 (SHIFT 27) NIL
                 (SHIFT 27)
                 (SHIFT 27) NIL
                 (REDUCE ADDING-OPERATOR 1) (REDUCE ADDING-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) NIL
                 (SHIFT 27) NIL
                 (SHIFT 27)
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL NIL NIL NIL
                 (REDUCE UNARY-OPERATOR 2) NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (SYMBOL
             . #((SHIFT 4) NIL NIL
                 (SHIFT 28) NIL (REDUCE OPERATION 1)
                 (REDUCE OPERATION 1) (SHIFT 28) NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (SHIFT 28) NIL NIL
                 (SHIFT 28) NIL NIL NIL
                 (SHIFT 28) NIL NIL NIL NIL NIL
                 (SHIFT 28) NIL
                 (SHIFT 28)
                 (SHIFT 28) NIL
                 (REDUCE ADDING-OPERATOR 1) (REDUCE ADDING-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) NIL
                 (SHIFT 28) NIL
                 (SHIFT 28)
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL NIL NIL NIL
                 (REDUCE UNARY-OPERATOR 2) NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (~
             . #(NIL NIL NIL (SHIFT 29) NIL
                 (REDUCE OPERATION 1) (REDUCE OPERATION 1)
                 (SHIFT 29) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL (SHIFT 29) NIL NIL
                 (SHIFT 29) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (SHIFT 29) NIL
                 (SHIFT 29)
                 (SHIFT 29) NIL
                 (REDUCE ADDING-OPERATOR 1) (REDUCE ADDING-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) NIL
                 (SHIFT 29) NIL
                 (SHIFT 29)
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL))
            (ADDING-OPERATOR
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (GOTO 34) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL (GOTO 34)
                 NIL NIL NIL NIL NIL NIL (GOTO 34) NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (BITWISE-OPERATOR
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (GOTO 35) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL (GOTO 35)
                 NIL NIL NIL NIL NIL NIL (GOTO 35) NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL))
            (-
             . #(NIL NIL NIL (SHIFT 23) NIL
                 (REDUCE OPERATION 1) (REDUCE OPERATION 1)
                 (SHIFT 23) NIL NIL NIL NIL NIL NIL
                 (SHIFT 38) NIL NIL NIL NIL NIL
                 (SHIFT 46) (REDUCE EXPRESSION 1) NIL
                 NIL (REDUCE TERM 1) (REDUCE FACTOR 1) NIL (REDUCE VALUE 1)
                 (REDUCE VALUE 1) (SHIFT 54) NIL NIL
                 (SHIFT 23) NIL NIL NIL NIL
                 (REDUCE ADDING-OPERATOR 1) (REDUCE ADDING-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (SHIFT 38)
                 NIL NIL NIL (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL
                 (SHIFT 38) NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL NIL (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) NIL NIL (REDUCE TERM 3) NIL NIL
                 (REDUCE FACTOR 3) NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (<<
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (SHIFT 39) NIL NIL NIL NIL NIL NIL
                 (REDUCE EXPRESSION 1) NIL NIL (REDUCE TERM 1)
                 (REDUCE FACTOR 1) NIL (REDUCE VALUE 1) (REDUCE VALUE 1) NIL
                 NIL NIL NIL NIL NIL NIL NIL (REDUCE ADDING-OPERATOR 1)
                 (REDUCE ADDING-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (SHIFT 39) NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL
                 (SHIFT 39) NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL NIL (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) NIL NIL (REDUCE TERM 3) NIL NIL
                 (REDUCE FACTOR 3) NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (>>
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (SHIFT 40) NIL NIL NIL NIL NIL NIL
                 (REDUCE EXPRESSION 1) NIL NIL (REDUCE TERM 1)
                 (REDUCE FACTOR 1) NIL (REDUCE VALUE 1) (REDUCE VALUE 1) NIL
                 NIL NIL NIL NIL NIL NIL NIL (REDUCE ADDING-OPERATOR 1)
                 (REDUCE ADDING-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (SHIFT 40) NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL
                 (SHIFT 40) NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL NIL (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) NIL NIL (REDUCE TERM 3) NIL NIL
                 (REDUCE FACTOR 3) NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (^
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (SHIFT 41) NIL NIL NIL NIL NIL NIL
                 (REDUCE EXPRESSION 1) NIL NIL (REDUCE TERM 1)
                 (REDUCE FACTOR 1) NIL (REDUCE VALUE 1) (REDUCE VALUE 1) NIL
                 NIL NIL NIL NIL NIL NIL NIL (REDUCE ADDING-OPERATOR 1)
                 (REDUCE ADDING-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (SHIFT 41) NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL
                 (SHIFT 41) NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL NIL (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) NIL NIL (REDUCE TERM 3) NIL NIL
                 (REDUCE FACTOR 3) NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (OR
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (SHIFT 42) NIL NIL NIL NIL NIL NIL
                 (REDUCE EXPRESSION 1) NIL NIL (REDUCE TERM 1)
                 (REDUCE FACTOR 1) NIL (REDUCE VALUE 1) (REDUCE VALUE 1) NIL
                 NIL NIL NIL NIL NIL NIL NIL (REDUCE ADDING-OPERATOR 1)
                 (REDUCE ADDING-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (SHIFT 42) NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL
                 (SHIFT 42) NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL NIL (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) NIL NIL (REDUCE TERM 3) NIL NIL
                 (REDUCE FACTOR 3) NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (&
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (SHIFT 43) NIL NIL NIL NIL NIL NIL
                 (REDUCE EXPRESSION 1) NIL NIL (REDUCE TERM 1)
                 (REDUCE FACTOR 1) NIL (REDUCE VALUE 1) (REDUCE VALUE 1) NIL
                 NIL NIL NIL NIL NIL NIL NIL (REDUCE ADDING-OPERATOR 1)
                 (REDUCE ADDING-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (SHIFT 43) NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL
                 (SHIFT 43) NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL NIL (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) NIL NIL (REDUCE TERM 3) NIL NIL
                 (REDUCE FACTOR 3) NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (MULTIPLYING-OPERATOR
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL (GOTO 47) NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL (GOTO 47)
                 (GOTO 47) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL))
            (*
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL (SHIFT 48) NIL
                 NIL (REDUCE TERM 1) (REDUCE FACTOR 1) NIL (REDUCE VALUE 1)
                 (REDUCE VALUE 1) NIL NIL NIL NIL NIL NIL NIL NIL
                 (REDUCE ADDING-OPERATOR 1) (REDUCE ADDING-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) NIL NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL NIL NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL NIL
                 (SHIFT 48)
                 (SHIFT 48) NIL NIL (REDUCE TERM 3) NIL
                 NIL (REDUCE FACTOR 3) NIL NIL NIL NIL NIL NIL NIL NIL NIL))
            (/
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (SHIFT 33) NIL NIL NIL NIL NIL NIL
                 (REDUCE REGISTER-LIST 1) (SHIFT 49) NIL
                 NIL (REDUCE TERM 1) (REDUCE FACTOR 1) NIL (REDUCE VALUE 1)
                 (REDUCE VALUE 1) NIL NIL NIL NIL NIL NIL NIL NIL
                 (REDUCE ADDING-OPERATOR 1) (REDUCE ADDING-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) NIL NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL NIL NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL
                 (SHIFT 33)
                 (SHIFT 49)
                 (SHIFT 49) NIL (REDUCE REGISTER-LIST 3)
                 (REDUCE TERM 3) NIL NIL (REDUCE FACTOR 3) NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL))
            (COMMA
             . #(NIL NIL NIL NIL NIL NIL NIL NIL
                 (SHIFT 32) (REDUCE OPERANDS 1)
                 (REDUCE OPERAND 1) (REDUCE OPERAND 1) (REDUCE OPERAND 1)
                 (REDUCE OPERAND 1) (REDUCE ABSOLUTE 1) (REDUCE INDIRECT 1)
                 (REDUCE INDIRECT 1) (REDUCE INDIRECT 1) (REDUCE INDIRECT 1)
                 NIL (REDUCE REGISTER-LIST 1) (REDUCE EXPRESSION 1) NIL NIL
                 (REDUCE TERM 1) (REDUCE FACTOR 1) NIL (REDUCE VALUE 1)
                 (REDUCE VALUE 1) NIL NIL (SHIFT 32) NIL
                 NIL NIL NIL NIL (REDUCE ADDING-OPERATOR 1)
                 (REDUCE ADDING-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE IMMEDIATE 2) NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (SHIFT 63) NIL NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) (REDUCE OPERANDS 3)
                 (REDUCE REGISTER-LIST 3) (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) (SHIFT 67)
                 (REDUCE REGISTER-LIST 3) (REDUCE TERM 3)
                 (REDUCE DISPLACEMENT-INDIRECT 3) NIL (REDUCE FACTOR 3) NIL
                 (REDUCE DISPLACEMENT-INDIRECT 4) NIL
                 (REDUCE POSTINCREMENT-INDIRECT 4) NIL
                 (REDUCE PREDECREMENT-INDIRECT 4) NIL
                 (REDUCE INDEXED-INDIRECT 5) (REDUCE INDEXED-INDIRECT 6)))
            (+
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (SHIFT 37) NIL NIL NIL NIL NIL NIL
                 (REDUCE EXPRESSION 1) NIL NIL (REDUCE TERM 1)
                 (REDUCE FACTOR 1) NIL (REDUCE VALUE 1) (REDUCE VALUE 1) NIL
                 NIL NIL NIL NIL NIL NIL NIL (REDUCE ADDING-OPERATOR 1)
                 (REDUCE ADDING-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (SHIFT 37) NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1) NIL
                 (SHIFT 37) NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL NIL (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) NIL NIL (REDUCE TERM 3)
                 (SHIFT 68) NIL (REDUCE FACTOR 3) NIL
                 NIL NIL NIL NIL NIL NIL NIL NIL))
            (REGISTER
             . #(NIL NIL NIL (SHIFT 20) NIL
                 (REDUCE OPERATION 1) (REDUCE OPERATION 1)
                 (SHIFT 20) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL NIL (SHIFT 50)
                 NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 (SHIFT 20)
                 (SHIFT 20) NIL NIL
                 (SHIFT 59) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL (SHIFT 60) NIL NIL NIL NIL NIL
                 (SHIFT 65) NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL (SHIFT 69) NIL NIL NIL
                 (SHIFT 71) NIL NIL NIL NIL NIL NIL))
            (CLOSE
             . #(NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL NIL
                 NIL NIL NIL NIL NIL NIL (REDUCE EXPRESSION 1) NIL NIL
                 (REDUCE TERM 1) (REDUCE FACTOR 1) NIL (REDUCE VALUE 1)
                 (REDUCE VALUE 1) NIL NIL NIL NIL NIL NIL NIL NIL
                 (REDUCE ADDING-OPERATOR 1) (REDUCE ADDING-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) (REDUCE BITWISE-OPERATOR 1)
                 (REDUCE BITWISE-OPERATOR 1) NIL NIL NIL NIL
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (REDUCE MULTIPLYING-OPERATOR 1)
                 (SHIFT 62)
                 (SHIFT 64) NIL (REDUCE FACTOR 2)
                 (REDUCE UNARY-OPERATOR 2) NIL NIL (REDUCE EXPRESSION 3)
                 (REDUCE EXPRESSION 3) (SHIFT 66) NIL
                 (REDUCE TERM 3) NIL NIL (REDUCE FACTOR 3)
                 (SHIFT 70) NIL NIL NIL
                 (SHIFT 72) NIL
                 (SHIFT 73) NIL NIL))))))
    (DEFUN PARSE (NEXT-TOKEN)
      "NEXT-TOKEN is a function which returns a cons of the next token in
the input (the CAR being the symbol name, the CDR being any
information the lexer would like to preserve), and advances the input
one token.  Returns what might pass for a parse tree in some
countries."
      (DO* ((STACK (LIST 0))
            (TOKEN (FUNCALL
                                           NEXT-TOKEN))
            (RESULT-STACK NIL)
            (ROW (GETHASH
                                         (CAR TOKEN)
                                         TABLE)
                                        (GETHASH
                                         (CAR TOKEN)
                                         TABLE)))
           (NIL)
        (UNLESS ROW
          (ERROR "~A is not a valid token in this grammar."
                 TOKEN))
        (LET ((ACTION
               (AREF ROW
                     (FIRST STACK))))
          (CASE (FIRST ACTION)
            (SHIFT
             (PUSH TOKEN
                   RESULT-STACK)
             (SETF TOKEN
                     (FUNCALL NEXT-TOKEN))
             (PUSH (SECOND ACTION)
                   STACK))
            (REDUCE
             (PUSH (LIST (SECOND ACTION))
                   RESULT-STACK)
             (DOTIMES
                 (I
                  (THIRD ACTION))
               (POP STACK)
               (PUSH (POP (CDR RESULT-STACK))
                     (CDAR RESULT-STACK)))
             (DESTRUCTURING-BIND
                 (GOTO STATE)
                 (AREF
                  (GETHASH (SECOND ACTION)
                           TABLE)
                  (FIRST STACK))
               (ASSERT
                (EQL GOTO 'GOTO)
                (STATE)
                "Malformed parse table!")
               (PUSH STATE
                     STACK)))
            (ACCEPT
             (RETURN (CAR RESULT-STACK)))
            (T (ERROR "Parse error at ~A" TOKEN))))))))
