       IDENTIFICATION DIVISION.
       PROGRAM-ID. APFEL.
       AUTHOR. lspadin.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 N PIC 9(2).
       01 K PIC 9(3).
       01 aepfel PIC 9(3).
       01 Apfelubrig PIC 9(3).

       PROCEDURE DIVISION.
       MAIN.
           DISPLAY "Wie viele Sch�ler sind da?".
           ACCEPT N.
           DISPLAY "Wie viele �pfel gibt es?".
           ACCEPT K.
           COMPUTE aepfel = K / N
           COMPUTE Apfelubrig = K - (aepfel * N)
           DISPLAY "Jeder Sch�ler bekommt " aepfel " �pfel und"
           DISPLAY Apfelubrig " bleiben im Korb."
           DISPLAY "__________________________________"
           STOP RUN.
