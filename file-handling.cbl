       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILE-HANDLING.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       Select StudentNumbers ASSIGN TO "STUDENTS.DAT"
                   organization is line sequential.
       DATA DIVISION.
       FILE SECTION.
        FD StudentNumbers.
           01 numbers PIC 9(13).
       WORKING-STORAGE SECTION.
           01 eof PIC 9.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
           OPEN INPUT StudentNumbers
           READ StudentNumbers  
               AT END SET eof TO 1
           END-READ
           PERFORM UNTIL eof = 1
               DISPLAY numbers
               READ StudentNumbers
                   AT END SET eof TO 1
               END-READ
           END-PERFORM
           CLOSE StudentNumbers
           
           STOP RUN.