000000 identification division.
000000 program-id. extfile.
000000  DATA DIVISION.
000005   WORKING-STORAGE SECTION.
000000*     01 StudentDetails VALUE QUOTE.
000000*       88  EndOfStudentFile  VALUE HIGH-VALUES.
000000       02  StudentId       PIC 9(7).
000000       02  StudentName.
000000         03 Surname        PIC X(8).
000000         03 Initials       PIC XX.
000000       02  DateOfBirth.
000000         03 YOBirth        PIC 9(4).
000000         03 MOBirth        PIC 9(2).
000000         03 DOBirth        PIC 9(2).
000000       02  CourseCode      PIC X(4).
000000       02  Gender          PIC X.

           01 CurrentDate.
             02  CurrentYear     PIC 9(4).
             02  CurrentMonth    PIC 99.
000000 
000000 PROCEDURE DIVISION.
000000 Begin.
000000      DISPLAY StudentDetails.
000000      SET EndOfStudentFile TO TRUE.
000000      DISPLAY StudentDetails.
000000   STOP RUN.
