       IDENTIFICATION DIVISION.
       PROGRAM-ID. BOOK.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       copy copybook replacing ==vorname== by ==firstname==.
       copy copybook2.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
           DISPLAY firstname.
           DISPLAY nachname.
           
           DISPLAY strasse.
           DISPLAY auto1.
           DISPLAY auto3.
           
           STOP RUN.