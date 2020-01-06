       IDENTIFICATION DIVISION.
       PROGRAM-ID. MainProgram.
        ENVIRONMENT DIVISION.
          INPUT-OUTPUT SECTION.
        FILE-CONTROL.
          SELECT NAME-ADDRESS-FILE
            ASSIGN TO "C:\TMP\SAMPIN.TXT" 
            ORGANIZATION IS LINE SEQUENTIAL.
          SELECT PRINT-FILE
            ASSIGN TO "C:\TMP\SAMPOUT.TXT".
      * This next is only needed if the program is to sort a file.
          SELECT SORT-FILE-NAME
            ASSIGN TO "C:\TMP\SORT.TMP".
