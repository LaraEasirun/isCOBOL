       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMUNTIL.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 benutzerEingabe pic 99.
       01 zaehler pic 99 value 1.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
           
           DISPLAY "Bis wohin muss gezählt werden?"
           ACCEPT benutzerEingabe 
           
       PERFORM UNTIL zaehler > benutzerEingabe
           DISPLAY zaehler
           ADD 1 TO zaehler
       END-PERFORM
       
       STOP RUN.