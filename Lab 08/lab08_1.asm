TITLE LERB
.MODEL SMALL
.STACK 100h 
.DATA 
.CODE 
MAIN PROC 
    XOR BX,BX   ;zera os dados em bx
    MOV AH,1    ;pede um caractere
PEDIR:
    INT 21h     ;executa a funcao
    CMP AL,13   ;compara al com 13 "Enter"
    JE FIM      ;se for igual ao enter vai para o final do codigo
    AND AL,0fh  ;transforma em numero decimal 
    SHL BX,1    ;rotaciona o digito para a esquerda
    OR BL,AL   ;adiciona 1 ao ultimo digito
    JMP PEDIR   ;pula para pedir o caractere novamente
FIM:
    MOV AH,4CH  ;finaliza o programa
    INT 21H     ;executa a funcao
MAIN ENDP
END MAIN 