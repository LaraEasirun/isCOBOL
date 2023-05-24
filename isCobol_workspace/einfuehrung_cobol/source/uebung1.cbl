       IDENTIFICATION DIVISION.

       PROGRAM-ID. UEBUNG1.
       AUTHOR. lspadin.

       ENVIRONMENT DIVISION.

       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.

       DATA DIVISION.

       FILE SECTION.

       WORKING-STORAGE SECTION.
       
       01 name pic x(20).
       01 text pic x(20).
       01 text-gruppe.
           05 buchstabe1 pic x(1).
           05 buchstabe2 pic x(1).
           05 buchstabe3 pic x(1).
           05 buchstabe4 pic x(1).
           05 buchstabe5 pic x(1).
           05 buchstabe6 pic x(1).
           05 buchstabe7 pic x(1).
           
           
       LINKAGE SECTION.

       PROCEDURE DIVISION.

       MAIN.
       
           MOVE "Welcome" to text
           MOVE text to text-gruppe
       
           DISPLAY "Das Wort: " text-gruppe
           DISPLAY "Erster Buchstabe: " buchstabe1
           DISPLAY "Letzter Buchstabe: " buchstabe7
           STOP RUN.