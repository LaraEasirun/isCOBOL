       IDENTIFICATION DIVISION.
       PROGRAM-ID. KOMMA-VERSCHIEBUNG.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 zahl pic 99V99.
       01 result pic 9.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
       
           DISPLAY "Geben Sie eine Zahl ein:"
           ACCEPT zahl
           MULTIPLY zahl BY 10 GIVING result
           DISPLAY result 
           STOP RUN.