       IDENTIFICATION DIVISION.
       PROGRAM-ID. BANK.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       Select PinNumbers ASSIGN TO "PIN.DAT"
                   organization is line sequential.
       DATA DIVISION.
       FILE SECTION.
       FD PinNumbers.
           01 numbers PIC 9(13).
       WORKING-STORAGE SECTION.
        01 eof PIC 9.
        01 USER-PIN PIC 9(4).
        01 VALID-PIN-FLAG PIC X(1) VALUE 'N'.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
            DISPLAY "Bitte geben Sie die Kartennummer ein: "
           ACCEPT USER-PIN

           OPEN INPUT PinNumbers
           READ PinNumbers
            AT END SET eof TO 1
           END-READ
           PERFORM UNTIL eof = 1
             IF USER-PIN = numbers(1:4)
               MOVE 'Y' TO VALID-PIN-FLAG
               Display "Die PIN ist korrekt"
               EXIT PERFORM
             END-IF
        
            READ PinNumbers
            AT END SET eof TO 1
            END-READ
           END-PERFORM
    
           CLOSE PinNumbers
    
           IF VALID-PIN-FLAG = 'N' THEN
            DISPLAY "Die PIN ist nicht korrekt."
           END-IF

       STOP RUN.
       
     