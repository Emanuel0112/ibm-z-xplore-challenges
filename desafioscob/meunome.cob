       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEUNOME.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NOME-USUARIO     PIC X(30).

       PROCEDURE DIVISION.
           DISPLAY "Digite seu nome:".
           ACCEPT NOME-USUARIO.
           DISPLAY "Ola, " NOME-USUARIO "!".
           STOP RUN.
