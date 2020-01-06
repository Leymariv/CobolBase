000001 IDENTIFICATION DIVISION.
000002   PROGRAM-ID. ex-array.
000003 
000004 DATA DIVISION.
000005   WORKING-STORAGE SECTION.
000006     01 array.
000007       02 i         PIC 99.
000008       02 elements  PIC 99 OCCURS 10.
000009 
000010 PROCEDURE DIVISION.
000011   main.
000012     PERFORM VARYING i FROM 1 BY 1 UNTIL i > 10
000013       DISPLAY elements(i) SPACE NO ADVANCING
000014     END-PERFORM.
000015     STOP RUN.
000016 END PROGRAM ex-array.