000001 IDENTIFICATION DIVISION.
000002   PROGRAM-ID. ex-condition.
000003
000004 DATA DIVISION.
000005   WORKING-STORAGE SECTION.
000006     77 choix PIC X.
000007       88 oui    VALUE "O", "o".
000008       88 non    VALUE "N", "n".
000009       88 entier VALUE 0 THRU 9.
000010
000011 PROCEDURE DIVISION.
000012   main.
000013     ACCEPT choix.
000014     EVALUATE TRUE
000015       WHEN oui DISPLAY "oui" 
000016       WHEN non DISPLAY "non" 
000017       WHEN entier DISPLAY "entier" 
000018       WHEN OTHER DISPLAY "choix incorrect" 
000019     END-EVALUATE.
000020     STOP RUN.
000021 END PROGRAM ex-condition.