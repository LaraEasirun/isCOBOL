       IDENTIFICATION DIVISION.
       PROGRAM-ID. TASCHENRECHNER.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 zahl1 pic S999V99.
           01 zahl2 pic S999V99.
           01 result pic S999V99.
           01 eingabe pic x(9).
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
           DISPLAY "Geben Sie die erste Zahl ein: ".
           ACCEPT zahl1.
           
           DISPLAY "Geben Sie die zweite Zahl ein: ".
           ACCEPT zahl2.
           
           DISPLAY "W�hlen Sie den Operator: ".
       
       EVALUATE eingabe
           WHEN "+"
             ADD zahl1 TO zahl2 GIVING result
             DISPLAY "Summe = " result
           WHEN "-"
             SUBTRACT zahl2 FROM zahl1 GIVING result
             DISPLAY "Differenz = " result
           WHEN "*"
             MULTIPLY zahl1 BY zahl2 GIVING result
             DISPLAY "Produkt = " result
           WHEN "/"
             DIVIDE zahl1 BY zahl2 GIVING result
             DISPLAY "Quotient = " result
           WHEN OTHER
             DISPLAY "Bitte Eingabe �berpr�fen!"
       END-EVALUATE
       STOP RUN.       