        IDENTIFICATION DIVISION.
       PROGRAM-ID. IFANWEISUNG.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       01  a pic 9.
       01  b pic 9.
       LINKAGE SECTION.
       PROCEDURE DIVISION.

       MAIN.
       MOVE 1 TO a
       MOVE 0 TO b

       IF a = 1 OR b > 2
           DISPLAY "a ist 1 oder b ist größer als 2"
       ELSE
           DISPLAY "Etwas ist schief gegangen."
       END-IF

           DISPLAY "------------------------"

       IF a = 1 AND b > 2
            DISPLAY "a ist 1 und b ist größer als 2"
       ELSE
            DISPLAY "Etwas ist schief gegangen."
       END-IF

       STOP RUN.
                
        