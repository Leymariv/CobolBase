       IDENTIFICATION DIVISION.
       PROGRAM-ID. MainProgram.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  PACKED-DECIMAL-FIELD    PIC S9(5)V9(2)   USAGE IS COMP-3.
       01  EDIT-DROP-LEAD-ZEROES   PIC ZZ,ZZZ.99-.

       PROCEDURE DIVISION.
       main.
      * If the PACKED-DECIMAL-FIELD had more decimal positions
      * than the EDIT-WITH-BLANK-FILL field then the following would
      * truncate the decimal positions without rounding.

       move PACKED-DECIMAL-FIELD to EDIT-DROP-LEAD-ZEROES

      * If the PACKED-DECIMAL-FIELD had more decimal positions
      * than the EDIT-WITH-BLANK-FILL field then the following would
      *    do the proper rounding.

       add ZEROES TO PACKED-DECIMAL-FIELD
       giving EDIT-DROP-LEAD-ZEROES ROUNDED
       STOP RUN.
