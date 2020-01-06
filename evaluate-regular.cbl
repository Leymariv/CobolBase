       IDENTIFICATION DIVISION.
       PROGRAM-ID. ex-evaluate-regular.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-INDICATOR PIC X VALUE "x".
          01 WS-GENDER PIC X VALUE "m".
             88 WS-F VALUE "f" "F".
             88 WS-M VALUE "M", "m".
          01 WS-AGE PIC 99 VALUE 12.

       PROCEDURE DIVISION.
       EVALUATE WS-INDICATOR
         WHEN "A"   DISPLAY "This is Alphabetic filed"
         WHEN "N"   DISPLAY "This is Numeric filed"
         WHEN "X"   DISPLAY "This is Alpha numeric filed"
         WHEN OTHER DISPLAY "Invalid indicator" WS-INDICATOR
       END-EVALUATE.

       EVALUATE "A"
         WHEN WS-INDICATOR CONTINUE.


       EVALUATE TRUE
         WHEN WS-GENDER = "M"
           CONTINUE
         WHEN WS-GENDER = "F"
           DISPLAY "this is a woman!" "scd arg"
         WHEN OTHER
           CONTINUE.

       EVALUATE TRUE
         WHEN WS-F CONTINUE
         WHEN WS-M CONTINUE.

       EVALUATE WS-F
         WHEN TRUE CONTINUE
         WHEN FALSE CONTINUE.

       EVALUATE WS-GENDER
         WHEN "F"
           EVALUATE WS-AGE
             WHEN 18 CONTINUE
             WHEN 25 CONTINUE
             WHEN OTHER CONTINUE
         WHEN "M"
           EVALUATE WS-AGE
             WHEN 18 CONTINUE
             WHEN 25 CONTINUE
             WHEN OTHER CONTINUE.

       EVALUATE WS-AGE
         WHEN 18 THRU 60 CONTINUE.
       STOP RUN.