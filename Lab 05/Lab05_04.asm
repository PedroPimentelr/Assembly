TITLE 
.MODEL SMALL
.STACK 100h
.CODE
MAIN PROC

    MOV AH,2
    MOV BH,10
    MOV CX,26
    MOV BL,4
    MOV DL,97   ;97 é a letra 'a' na tabela ascii

IMPRIME: ;cria a sessao imprime
    INT 21h
    INC DL 
    DEC BL ;diminui o numero em bl
    JNZ SALTAR ;salta se for diferente de 0
    XCHG DL,BH ;troca dl com bh
    INT 21h
    XCHG DL,BH ; troca dl com bh
    MOV BL,4

SALTAR: ;cria a sessao saltar
    LOOP IMPRIME   ;volta para imprime 
                    ;Finaliza o programa
    MOV AH,4CH
    INT 21h 

MAIN ENDP
END MAIN