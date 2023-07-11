       IDENTIFICATION DIVISION.
       PROGRAM-ID. CURRENTDATE.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 date-time.
           03 date-1.
               05 year PIC 9(4).              
               05 month PIC 9(2).               
               05 day-1 PIC 9(2).                         
           03 time-1.
               05 hour PIC 9(2).             
               05 minutes PIC 9(2).
               05 seconds PIC 9(2).
               05 cent PIC 9(2).
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
           MOVE FUNCTION CURRENT-DATE TO date-time.
           DISPLAY "Das heutige Datum ist:".
           DISPLAY day-1 "." month "." year.
           DISPLAY "Die genaue Zeit ist:".
           DISPLAY hour ":" minutes ":" seconds ":" cent.
           
           STOP RUN.