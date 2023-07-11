       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIGITALUHR.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 minuten pic 9999.
       01 minutenInStunden pic 99.
       01 rest pic 99.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
           DISPLAY "Geben Sie eine Uhrzeit an: (in Minuten)"
           ACCEPT minuten
           
           DIVIDE minuten BY 60 GIVING minutenInStunden REMAINDER rest
           
           IF minuten >= 1440
              MOVE 0 TO minutenInStunden  
           END-IF  
           
           DISPLAY  minuten " -> " minutenInStunden ":"rest 
           STOP RUN.
