       IDENTIFICATION DIVISION.
       PROGRAM-ID. MainProgram.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 SharedItem     PIC X(25) IS GLOBAL.
       PROCEDURE DIVISION.
         Begin.
             CALL "InsertData"
             MOVE "Main can also use the share" TO SharedItem
             CALL "DisplayData"
             STOP RUN.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. InsertData.
       PROCEDURE DIVISION.
         Begin.
             MOVE "Shared area works" TO SharedItem
             CALL "DisplayData"
             EXIT PROGRAM.
       END PROGRAM InsertData.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. DisplayData IS COMMON PROGRAM.
       PROCEDURE DIVISION.
         Begin.
             DISPLAY SharedItem.
             EXIT PROGRAM.
       END PROGRAM DisplayData.

       END PROGRAM MainProgram.
