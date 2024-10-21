TITLE LERH
.MODEL SMALL
.STACK 100h 
.DATA 
.CODE 
MAIN PROC
    XOR BX,BX   ;limpa o registrador bx
    MOV CL,4    ;move 4 para o contador cl
    MOV AH,1    ;pede o caractere
    INT 21H     ;executa a funcao
INICIO:
    CMP AL,0DH  ;compara com 0Dh "enter"
    JE FIM      ;pula para o final se for igual ao enter
    CMP AL,39H  ;compara o numero com 39 para ver se eh uma letra
    JG LETRA    ;se for maior que 39 ele eh uma letra, entao pula para a secao de letras
    AND AL,0FH      ;transforma em numero se nao for letra
    JMP ROTACIONA   ;pula para a secao rotaciona 
LETRA:
    SUB AL,37H  ;tira 37h de AL por trabalhar com numeros hexadecimais
ROTACIONA:
    SHL BX,CL   ;rotaciona o digito para a esquerda
    OR BL,AL    ;adiciona ao ultimo digito 
    INT 21H     ;executa a funcao
    JMP INICIO    ;pula para a seção inicio 
FIM:
    mov ah,4ch  ;finaliza o programa
    int 21h     ;executa a funcao
MAIN ENDP
END MAIN 