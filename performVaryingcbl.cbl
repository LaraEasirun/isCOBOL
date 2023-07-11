       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMVARYINGCBL.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 benutzerEingabe pic 99.
       01 zaehler pic 99.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
       
           DISPLAY "Bis wohin soll gezählt werden?"
           ACCEPT benutzerEingabe 
           
       Perform VARYING zaehler FROM 1 BY 5 
              UNTIL zaehler > benutzerEingabe
                DISPLAY zaehler 
                ADD 1 TO zaehler
       END-PERFORM
           STOP RUN.     
                