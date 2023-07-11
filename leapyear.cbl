       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAPYEAR.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 input-year PIC 9(4).
       01 zahl PIC 9(4).
       01 rest1 PIC 9(4).
       01 rest2 PIC 9(4).
       01 rest3 PIC 9(4).
       
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
           DISPLAY "Bitte geben Sie ein Jahr ein:"
           ACCEPT input-year 
           
           
           DIVIDE input-year BY 4 GIVING zahl REMAINDER rest1 
           DIVIDE input-year BY 400 GIVING zahl REMAINDER rest2            
           DIVIDE input-year BY 100 GIVING zahl REMAINDER rest3
           
           IF rest1 = 0 AND rest3 NOT 0 OR rest2 = 0
                DISPLAY "Das Jahr " input-year " ist ein Schaltjahr. "
           ELSE
                DISPLAY "Das Jahr " input-year " ist kein Schaltjahr. "
           END-IF
               
           STOP RUN.        