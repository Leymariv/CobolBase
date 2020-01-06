       identification division.
        PROGRAM-ID. corresmove.

      * DATA DIVISION.
      * WORKING-STORAGE section.
      *   01  GROUP-1.
      * 	    05  FIELD-A      PIC 999.
      *      05  FIELD-B.
      *        10  FIELD-C    PIC X(12).
      *        10  FIELD-D    PIC XXX.
      *      05  FIELD-E      PIC 99.
      *      05  FIELD-F      PIC X.
      *   01  GROUP-2.
      *     05  FIELD-E       PIC 99.
      *     05  FIELD-A       PIC 9(4).
      *     05  FIELD-BB.
      *       10  FIELD-C     PIC XXX.
      *       10  FIELD-D     PIC X.
      *     05  FIELD-G       PIC X(10).
      *   01 A-GROUP.
      *     02 FIELD1.            
      *       03 A PIC X.
      *       03 B PIC 9.          
      *       03 C PIC XX.
      *       03 D PIC 99.
      *       03 E PIC XXX.
      *   01 B-GROUP.
      *     02 FIELD2.
      *       03 A PIC X.
      *       03 C PIC XX.
      *       03 E PIC XXX.
      *
      *   77 VAR  PIC X.
      *   77 ITEM PIC X(10) VALUE IS "XYZABCDEFG".

       PROCEDURE DIVISION.
       main.
       MOVE CORRESPONDING GROUP-1 TO GROUP-2.
       MOVE CORR GROUP-1 TO GROUP-2.

       MOVE CORRESPONDING
         A-GROUP TO B-GROUP.

      * Equivalent to following move statements:
       MOVE A OF A-GROUP TO A OF B-GROUP.
       MOVE C OF A-GROUP TO C OF B-GROUP.
       MOVE E OF A-GROUP TO E OF B-GROUP.
       MOVE ITEM(4:3) TO VAR.
