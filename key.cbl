       IDENTIFICATION DIVISION.
       PROGRAM-ID. LetterSearchAll.
       AUTHOR. Michael Coughlan.
      * This program accepts an upper case letter from the
      * user and then displays which letter of the alphabet
      * it is.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01  LetterTable.
          02 LetterValues.
             03 FILLER PIC X(13)
                VALUE "ABCDEFGHIJKLM".
             03 FILLER PIC X(13)
                VALUE "NOPQRSTUVWXYZ".
          02 FILLER REDEFINES LetterValues.
             03 Letter PIC X OCCURS 26 TIMES
                             ASCENDING KEY IS Letter
                             INDEXED BY LetterIdx.

        01 SearchLetter  PIC X.
        01 LetterPos     PIC 99.

       01  TABLE-RECORD.
          05  EMPLOYEE-TABLE OCCURS 100 TIMES
              ASCENDING KEY IS WAGE-RATE EMPLOYEE-NO
              INDEXED BY A, B.
            10  EMPLOYEE-NAME                     PIC X(20).
            10  EMPLOYEE-NO                       PIC 9(6).
            10  WAGE-RATE                         PIC 9999V99.
            10  WEEK-RECORD OCCURS 52 TIMES
                ASCENDING KEY IS WEEK-NO INDEXED BY C.
              15  WEEK-NO                         PIC 99.
              15  AUTHORIZED-ABSENCES             PIC  9.
              15  UNAUTHORIZED-ABSENCES           PIC  9.
              15  LATE-ARRIVALS                   PIC  9.

       01  TB-2.
           05  EL-2 OCCURS 10 ASCENDING KEY D2 D3
                                  INDEXED BY IND-2.
               10  D1     PIC X(10).
               10  D2     PIC X(5).
               10  D3     PIC X(55).

        PROCEDURE DIVISION.
        Begin.
          DISPLAY "Enter the letter please - "
                WITH NO ADVANCING
          ACCEPT SearchLetter
          SET LetterIdx LetterPos TO 1
          SEARCH ALL Letter
             AT END DISPLAY "Letter " SearchLetter " was not found!"
             WHEN Letter(LetterIdx) = SearchLetter
             SET LetterPos TO LetterIdx
             DISPLAY SearchLetter " is in position " LetterPos
          END-SEARCH
          STOP RUN.
