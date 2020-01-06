       IDENTIFICATION DIVISION.
        PROGRAM-ID. MainProgram.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
          SOURCE-COMPUTER. IBM-370.
          SPECIAL-NAMES.
           CLASS WS-VALID-EMAIL IS
             '@' '_' '.'
             'a' THRU 'i'
             'j' THRU 'r'
             's' THRU 'z'
             '0' THRU '9'.
