000000   IDENTIFICATION DIVISION.
000000   PROGRAM-ID. HELLO.
000000   DATA DIVISION.
000000      WORKING-STORAGE SECTION.
000000      01 WS-NUM1 PIC 9(9) VALUE 250.
000000      01 WS-NUM2 PIC 9(9) VALUE 250.
000000      01 WS-NUM3 PIC 9(9) VALUE 250.

000000   PROCEDURE DIVISION.
          DIVIDE 5 INTO WS-NUM3.
          DIVIDE 5 INTO 250 GIVING WS-NUM1.
          DIVIDE 250 BY 5 GIVING WS-NUM2.
     	  DISPLAY "regular : " WS-NUM1.
     	  DISPLAY "into    : " WS-NUM1.
       	  DISPLAY "by      : " WS-NUM2.

000000   STOP RUN.
