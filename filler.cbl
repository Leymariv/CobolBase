000001 IDENTIFICATION DIVISION.
000002   PROGRAM-ID. ex.
000003 
000004 DATA DIVISION.
000005   WORKING-STORAGE SECTION.
000001    01  CUSTOMER-RECORD.
000001        05  Customer-Name.
000001              10  FirstName     PIC       X(06).
000001              10  MiddleName    PIC       X(1).
000001              10  LastName      PIC       X(05).
000001        05  Customer-DOB.
000001              10   Month           PIC       99.
000001              10   FILLER          PIC       X  VALUE '/'.
000001              10   Theday          PIC       99.
000001              10   FILLER          PIC       X  VALUE  '/'.
000001              10   Year            PIC       99.