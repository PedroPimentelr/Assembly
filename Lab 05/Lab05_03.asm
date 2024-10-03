TITLE MAIMIN
.MODEL SMALL
.CODE
MAIN PROC
               MOV  AH,02H
               MOV  DL,65  ;65 na tabela ascii é igual a 'A'
               MOV  CX,26 
    
    MAIUSCULAS: ;Cria a sessão de letras maiusculas
               INT  21h
               INC  DL
               LOOP MAIUSCULAS  ;manda voltar para o começo da sessao maiusculas

               MOV  AH,02H
               MOV  DL,10
               INT  21h

               MOV  AH,02H
               MOV  DL,97  ;97 no codigo ascii é a letra 'a'
               MOV  CX,26   

    MINUSCULAS:  ;Cria a sessão de letras minusculas
               INT  21h
               INC  DL   
               LOOP MINUSCULAS ;manda voltar para o começo da sessão minusculas

    FIM:       ; Finaliza o programa
               MOV  AH,4CH
               INT  21H
MAIN ENDP
END MAIN