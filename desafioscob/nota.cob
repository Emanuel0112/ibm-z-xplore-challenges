       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOTA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NOME-USUARIO     PIC X(30).
       01  NOTA-USUARIO     PIC 9(2).
       01  NOTA-ED          PIC Z9.

       PROCEDURE DIVISION.
           DISPLAY "Digite seu nome:".
           ACCEPT NOME-USUARIO.

           DISPLAY "Digite uma nota de 0 a 10:".
           ACCEPT NOTA-USUARIO.

           MOVE NOTA-USUARIO TO NOTA-ED.

           DISPLAY "Aluno: " NOME-USUARIO.
           DISPLAY "Nota:  " NOTA-ED.

           EVALUATE TRUE
               WHEN NOTA-USUARIO >= 0 AND NOTA-USUARIO <= 4
                    DISPLAY "Classificação: Reprovado."
               WHEN NOTA-USUARIO >= 5 AND NOTA-USUARIO <= 6
                    DISPLAY "Classificação: Recuperação."
               WHEN NOTA-USUARIO >= 7 AND NOTA-USUARIO <= 8
                    DISPLAY "Classificação: Aprovado."
               WHEN NOTA-USUARIO >= 9 AND NOTA-USUARIO <= 10
                    DISPLAY "Classificação: Aprovado com excelência."
               WHEN OTHER
                    DISPLAY "Nota inválida."
           END-EVALUATE.

           STOP RUN.
