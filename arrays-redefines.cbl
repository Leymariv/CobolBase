000001   IDENTIFICATION DIVISION.
000002     PROGRAM-ID. ex-array.
000003 
000004   DATA DIVISION.
000005   WORKING-STORAGE SECTION.
000006       01 chars PIC X(10) VALUE "AaBbCcDdEe".
000007         01 REDEFINES chars.
000008         02 array PIC XX OCCURS 5.

             01 EXAMPLE.
000000         02  DAYS.
                 03  FILLER PIC X(3) VALUE "MON".
                 03  FILLER PIC X(3) VALUE "TUE".
                 03  FILLER PIC X(3) VALUE "WEN".
                 03  FILLER PIC X(3) VALUE "THU".
                 03  FILLER PIC X(3) VALUE "FRI".
                 03  FILLER PIC X(3) VALUE "SAT".
                 03  FILLER PIC X(3) VALUE "SUN".
               02  DAYSARRAY REDEFINES DAYS.
                 03  DAY-ITEM OCCURS 7 PIC X(3).

       01  MATRIX.
           05  MYVALUES.
               10  FILLER  PIC X(4) VALUE "1025".
               10  FILLER  PIC X(4) VALUE "7034".
               10  FILLEr  PIC X(4) VALUE "0981".
        01  TAB REDEFINES MATRIX.
           05  CASES OCCURS 3 TIMES.
               10 CASE PIC X OCCURS 4 TIMES.
