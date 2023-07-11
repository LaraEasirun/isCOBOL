       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILE-HANDLING-WRITE.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
             SELECT Text ASSIGN TO "PRINTER.DAT"
              organization is line sequential.
       DATA DIVISION.
       FILE SECTION.
            FD Text.
              01 Textsatz PIC X(72).
       WORKING-STORAGE SECTION.
           01 Steuersatz.
             05 Steuerung PIC X(25).
       LINKAGE SECTION.
       PROCEDURE DIVISION.
       MAIN.
           OPEN OUTPUT Text
           MOVE "Hallo wie geht es dir?" TO Steuersatz.
           WRITE Textsatz FROM Steuersatz.
           STOP RUN.
