TITLE IMPB
.MODEL SMALL
.STACK 100h 
.DATA 
.CODE 
MAIN PROC 
    MOV BX,9h   ;digito que vai ser transformado em binario
    MOV CX,16   ;move 16 para o contador cx
    MOV AH,2    ;exibe caractere
PARTE1:
    ROL BX,1    ;rotaciona bx para a esquerda 
    JNC PARTE2  ;pula para a parte dois se nao tiver o carry
    MOV DL,31h  ;move 31h para dl
    INT 21h     ;executa a funcao
    JMP PARTE3  ;pula para a parte3 
PARTE2:
    MOV DL,30h  ;move 30h para dl, que exibe o numero 
    INT 21H     ;executa a funcao
PARTE3:
    LOOP PARTE1 ;cria o loop na parte1

    MOV AH,4ch  ;finaliza o programa 
    INT 21h     ;executa a funcao
MAIN ENDP
END MAIN 