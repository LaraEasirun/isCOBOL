       IDENTIFICATION DIVISION.
       PROGRAM-ID. MATHEOPERATIONEN.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       01 zahl1 pic 99 value 2.
       01 zahl2 pic 99 value 10.
       01 result pic 999.
       
       LINKAGE SECTION.
       PROCEDURE DIVISION.
           
       MAIN.
           ADD zahl1 TO zahl2 GIVING result.
           DISPLAY result.
           
           SUBTRACT zahl2 FROM zahl1 GIVING result.
           DISPLAY result.
           
           MULTIPLY zahl1 BY zahl2 GIVING result.
           DISPLAY result.
           
           DIVIDE zahl1 BY zahl2 GIVING result.
           DISPLAY result.
           
           STOP RUN.