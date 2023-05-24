       IDENTIFICATION DIVISION.
       PROGRAM-ID. GETRAENKEAUTOMAT.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 geld pic 9V99.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
       
       DISPLAY "Wählen Sie Ihr Getränk aus:".
       DISPLAY "1) Wasser   (0,50€)".
       DISPLAY "2) Limonade (1,-€)".
       DISPLAY "3) Bier (2,-€)".
       
       DISPLAY "Geben Sie 1,2 oder 3 ein:".
       ACCEPT geld.
       
       EVALUATE geld
           WHEN 1
               DISPLAY "Bitte werfen Sie 50 Cent in den Automaten"
               ACCEPT geld
               IF geld = 0.5
               DISPLAY "Vielen Dank, bitte entnehmen Sie Ihr Getränk!"
               END-IF
           WHEN 2
               DISPLAY "Bitte werfen Sie 1 Euro in den Automaten"
               ACCEPT geld
                IF geld = 1
               DISPLAY "Vielen Dank, bitte entnehmen Sie Ihr Getränk!"
               END-IF
           WHEN 3 
               DISPLAY "Bitte werfen Sie 2 Euro in den Automaten"
               ACCEPT geld
                IF geld = 2
               DISPLAY "Vielen Dank, bitte entnehmen Sie Ihr Getränk!"
               END-IF
           WHEN OTHER
               DISPLAY "FEHLER!"
       END-EVALUATE
       
       STOP RUN.        
                           