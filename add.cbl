000000   IDENTIFICATION DIVISION.
000000   PROGRAM-ID.  addition.
000000   
000000   DATA DIVISION.
000000   WORKING-STORAGE SECTION.
          01 WS-NUM1 PIC 9(9) VALUE 10.
          01 WS-NUM2 PIC 9(9) VALUE 10.
          01 WS-NUM3 PIC 9(9) VALUE 10.
          01 WS-NUM4 PIC 9(9) VALUE 10.
          01 WS-NUMA PIC 9(9) VALUE 10.
          01 WS-NUMB PIC 9(9) VALUE 10.
          01 WS-NUMC PIC 9(9) VALUE 10.
          01 WS-NUMD PIC 9(9) VALUE 10.

      *   01  GROUP-1.
      *     05  FIELD-A      PIC 999.
      *     05  FIELD-B.
      *       10  FIELD-C    PIC X(12).
      *       10  FIELD-D    PIC XXX.
      *     05  FIELD-E      PIC 99.
      *     05  FIELD-F      PIC X.
      *   01  GROUP-2.
      *     05  FIELD-E       PIC 99.
      *     05  FIELD-A       PIC 9(4).
      *     05  FIELD-BB.
      *       10  FIELD-C     PIC XXX.
      *       10  FIELD-D     PIC X.
      *     05  FIELD-G       PIC X(10).

000000   
000000   PROCEDURE DIVISION.
000000   Calculator.

          ADD WS-NUM1 TO WS-NUM2.
          ADD WS-NUM1 TO WS-NUM2 WS-NUM3.
          ADD WS-NUM1 TO WS-NUM2, WS-NUM3.
          ADD WS-NUM1 WS-NUM2 TO WS-NUM3.
          ADD WS-NUM1, WS-NUM2 TO WS-NUM3 WS-NUM4.

          ADD WS-NUMA TO WS-NUMB GIVING WS-NUMC.
          ADD WS-NUMA, WS-NUMB TO WS-NUMB GIVING WS-NUMC.
          ADD WS-NUMA WS-NUMB TO WS-NUMB GIVING WS-NUMC WS-NUMD.

          ADD WS-NUM1 TO WS-NUM2 ROUNDED.
          ADD WS-NUM1, WS-NUM2 TO WS-NUM2 ROUNDED WS-NUM3.
          ADD WS-NUM1 WS-NUM2 TO WS-NUM2 ROUNDED, WS-NUM3 ROUNDED.
          ADD WS-NUMA TO WS-NUMB GIVING WS-NUMC ROUNDED.
          ADD WS-NUMA WS-NUM2 TO WS-NUMB
                   GIVING WS-NUMC ROUNDED WS-NUMD ROUNDED.

         ADD CORRESPONDING
           GROUP-1 TO GROUP-2
	   ON SIZE ERROR MOVE WS-NUM1 TO WS-NUM2
           NOT SIZE ERROR MOVE 0 TO WS-NUM2
         END-ADD.