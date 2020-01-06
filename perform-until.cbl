000001 IDENTIFICATION DIVISION.
000002   PROGRAM-ID. ex-boucle.
000003
000004 DATA DIVISION.
000005   WORKING-STORAGE SECTION.
000006     77 saisie PIC 9 VALUE 0.
000007       88 correcte VALUE 1, 2.
000008                                                                                                                                    
000009 PROCEDURE DIVISION.
000010   main.
000011     PERFORM TEST AFTER UNTIL correcte
000012       DISPLAY "saisie = " NO ADVANCING
000013       ACCEPT saisie
000014     END-PERFORM.
000015     DISPLAY "Saisie correcte !".
000016     STOP RUN.
000017 END PROGRAM ex-boucle.