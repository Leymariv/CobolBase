       IDENTIFICATION DIVISION.
         PROGRAM-ID. MainProgram.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
         SPECIAL-NAMES.
           cursor is cursor-name.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01  cursor-name.
               05  c-line      pic 9(3) value 1.
               05  c-col       pic 9(3) value 1.
