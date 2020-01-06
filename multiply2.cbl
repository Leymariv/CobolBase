       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.

       DATA DIVISION.
          WORKING-STORAGE SECTION.
          01 WS-NUM1 PIC 9(9) VALUE 10.
          01 WS-NUM2 PIC 9(9) VALUE 10.
          01 WS-NUM3 PIC 9(9) VALUE 10.
          01 WS-NUMA PIC 9(9) VALUE 10.
          01 WS-NUMB PIC 9(9) VALUE 10.
          01 WS-NUMC PIC 9(9) VALUE 10.
          01 WS-NUMD PIC 9(9) VALUE 10.

       PROCEDURE DIVISION.
          MULTIPLY WS-NUM1 BY WS-NUM2.
          MULTIPLY WS-NUM1 BY WS-NUM2 WS-NUM3.
          MULTIPLY WS-NUM1 BY WS-NUM2, WS-NUM3.
          MULTIPLY WS-NUMA BY WS-NUMB GIVING WS-NUMC.
          MULTIPLY WS-NUMA BY WS-NUMB GIVING WS-NUMC WS-NUMD.

          MULTIPLY 1 BY WS-NUM2.
          MULTIPLY 2 BY WS-NUM2 WS-NUM3.
          MULTIPLY 3 BY WS-NUM2, WS-NUM3.
          MULTIPLY 4 BY 8 GIVING WS-NUMC.
          MULTIPLY 5 BY 9 GIVING WS-NUMC WS-NUMD.

          MULTIPLY WS-NUM1 BY WS-NUM2 ROUNDED.
          MULTIPLY WS-NUM1 BY WS-NUM2 ROUNDED WS-NUM3.
          MULTIPLY WS-NUM1 BY WS-NUM2 ROUNDED, WS-NUM3 ROUNDED.
          MULTIPLY WS-NUMA BY WS-NUMB GIVING WS-NUMC ROUNDED.
          MULTIPLY WS-NUMA BY WS-NUMB
                   GIVING WS-NUMC ROUNDED WS-NUMD ROUNDED.

          DISPLAY "WS-NUM1     : " WS-NUM1
          DISPLAY "WS-NUM2     : " WS-NUM2
          DISPLAY "WS-NUM3     : " WS-NUM3
          DISPLAY "WS-NUMA     : " WS-NUMA
          DISPLAY "WS-NUMB     : " WS-NUMB
          DISPLAY "WS-NUMC     : " WS-NUMC
          DISPLAY "WS-NUMD     : " WS-NUMD

          STOP RUN.