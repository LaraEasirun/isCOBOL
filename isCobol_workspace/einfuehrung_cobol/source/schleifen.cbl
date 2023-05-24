       IDENTIFICATION DIVISION.
       PROGRAM-ID. SCHLEIFEN.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  zaehler pic 9.
       01  zaehler1 pic 9.
       01  rest pic 9.
       01  result pic 9.
       LINKAGE SECTION.
       PROCEDURE DIVISION.

       MAIN.
           DISPLAY "Wie oft muss wiederholt werden?"
           ACCEPT zaehler
           
           MOVE zaehler TO zaehler1
           
           DISPLAY "Gerade Zahlen"
       PERFORM zaehler TIMES
           DIVIDE zaehler by 2 GIVING result REMAINDER rest 
           IF rest = 0
              DISPLAY ">>"zaehler"<<"
           END-IF
           
           SUBTRACT zaehler FROM 1 GIVING zaehler
       END-PERFORM
       
           DISPLAY "Ungerade Zahlen"
       PERFORM zaehler1 TIMES 
           DIVIDE zaehler1 BY 2 GIVING result REMAINDER rest
           IF rest > 0 OR rest < 0
             DISPLAY ">>"zaehler1"<<"
           END-IF
           SUBTRACT zaehler1 FROM 1 GIVING zaehler1 
       END-PERFORM      
                       
       
       STOP RUN.