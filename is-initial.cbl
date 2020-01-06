       IDENTIFICATION DIVISION.
       PROGRAM-ID. mainPgrm.
       DATA DIVISION.
       WORKING-STORAGE section.
       77 IncrementVal PIC 99.

       PROCEDURE DIVISION.
       MOVE 12 TO IncrementVal.
       CALL "Steadfast" USING BY CONTENT IncrementVal.

       MOVE 5 TO IncrementVal
       CALL "Steadfast" USING BY CONTENT IncrementVal.

       MOVE 12 TO IncrementVal.
       CALL "Steadfast" USING BY CONTENT IncrementVal.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Steadfast IS INITIAL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 RunningTotal PIC 9(5) VALUE 50.

       LINKAGE SECTION.
       01 ParamValue PIC 99.

       PROCEDURE DIVISION USING ParamValue.
       Begin.
          ADD ParamValue TO RunningTotal.
          DISPLAY "Total = ", RunningTotal.
          EXIT PROGRAM.

       END PROGRAM Steadfast.

       END PROGRAM mainPgrm.