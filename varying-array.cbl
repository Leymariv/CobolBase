       IDENTIFICATION DIVISION.
       PROGRAM-ID. LetterSearchAll.
      
        DATA DIVISION.
        WORKING-STORAGE SECTION.
         01  LINES-GROUP.
000000     05  LINE-ITEM-COUNT                  PIC 99.
000000     05  LINE-ITEMS OCCURS 0 TO 25 TIMES
000000           DEPENDING ON LINE-ITEM-COUNT.
000000         10  QUANTITY                     PIC 9999.
000000         10  DESCRIPTION                  PIC X(30).
000000         10  UNIT-PRICE                   PIC S9(5)V99.
