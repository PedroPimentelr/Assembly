TITLE DIGITE 
.MODEL SMALL
.DATA
    MSG1 DB "Digite um caractere:$"
    MSG2 DB "O caractere digitado foi:$"
.CODE
MAIN PROC
    ;Permite o acesso às variaveis definidas em .DATA
         MOV AX,@DATA
         MOV DS,AX
           
    ;Exibe na tela a string MSG1
         MOV AH,9
         LEA DX,MSG1
         INT 21h

    ;Lê um caracter do teclado e salva o caracter lido
         MOV AH,1
         INT 21h

    ;copia o carater lido em AL até BL

         MOV BL,AL
         
    ;Exibe o caracter Line Feed
         MOV AH,2
         MOV DL,10       ;O código ASC do caracter Line Feed é 10 (0ah)
         INT 21h
    ;Move o cursor pro canto da tela
         MOV AH,2
         MOV DL,13       ;O código ASC do caracter Carriage Return é 13 (0Dh)
         INT 21h
    ;Exibe o caracter lido (salvo em BL)
         MOV AH,9
         LEA DX,MSG2
         INT 21h

         MOV AH,2
         MOV DL,BL
         INT 21h

    ;encerra o programa
         MOV AH,4Ch
         INT 21h
MAIN ENDP
    END MAIN  