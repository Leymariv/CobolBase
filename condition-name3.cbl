000001 IDENTIFICATION DIVISION.
000002   PROGRAM-ID. ex-condition.
000003
000004 DATA DIVISION.
000005   WORKING-STORAGE SECTION.
          01   PayMethodSS             PIC 9.
            88 ByVisa         VALUE 1, 7.
            88 ByAccess       VALUE 2.
            88 ByExpress      VALUE 3 THRU 6.
000004 PROCEDURE DIVISION.
000012   main.
000013     SET ByVisa TO TRUE.