       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBPROGRAMM.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
            SELECT Ausgabe ASSIGN TO "anzeige"
       ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD Ausgabe.
         01 anzeigen PIC X(100) VALUE "ECHO Hallo Welt".

       WORKING-STORAGE SECTION.
         01 batchdatei PIC X(20) VALUE "helloWorld.bat".

       PROCEDURE DIVISION.
       MAIN.
           OPEN OUTPUT Ausgabe
           WRITE anzeigen
           CLOSE Ausgabe

           CALL "C$SYSTEM" USING batchdatei
           
           STOP RUN.