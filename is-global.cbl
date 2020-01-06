       IDENTIFICATION DIVISION.
       PROGRAM-ID. ContainerProgram.
       DATA DIVISION.
       WORKING-STORAGE section.
         01 SName PIC X(10) IS GLOBAL.
       PROCEDURE DIVISION.
          CALL "ReportFromTable"
          EXIT PROGRAM.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. ReportFromTable.
       PROCEDURE DIVISION.
         DISPLAY "Student " SName.
       EXIT PROGRAM.
       END PROGRAM ReportFromTable.

       END PROGRAM ContainerProgram.
