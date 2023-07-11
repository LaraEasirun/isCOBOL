       IDENTIFICATION DIVISION.
       PROGRAM-ID. TISCHE.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Klasse-A PIC 9(3).
       01 Klasse-B PIC 9(3).
       01 Klasse-C PIC 9(3).
       01 Anzahl-Tische PIC 9(3).
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN. 

           DISPLAY "Anzahl der Schüler in Klasse A: "
           ACCEPT Klasse-A
           DISPLAY "Anzahl der Schüler in Klasse B: "
           ACCEPT Klasse-B
           DISPLAY "Anzahl der Schüler in Klasse C: "
           ACCEPT Klasse-C
           
           COMPUTE Anzahl-Tische ROUNDED = 
           (Klasse-A + Klasse-B + Klasse-C) / 2
           DISPLAY "Es werden "Anzahl-Tische " Tische benötigt
           STOP RUN.
