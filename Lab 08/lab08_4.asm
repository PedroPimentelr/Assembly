TITLE IMPH
.MODEL SMALL
.STACK 100h 
.DATA 
.CODE 
MAIN PROC 
    MOV BX,78   ;digito que vai ser transformado em hexadecimal
    MOV CH,4    ;move 4 para o contador ch
    MOV CL,4    ;move 4 para cl que desloca 4 vezes para a direita
    MOV AH,2    ;move 2 para ah que exibe um caractere
INICIO: 
    MOV DL,BH   ;move o conteudo em bh para DL 
    SHR DL,CL   ;rotaciona um digito para a direita
    CMP DL,0AH  ;compara dl com 0AH
    JAE LETRA   ;se for maior ou igual, ele eh uma letra, entao vai para a parte de letras
    ADD DL,30h  ;adiciona 30h para dl se for um numero
    JMP FINAL  ;pula para o final
LETRA: 
    ADD DL,37H  ;adiciona 37h transformando em letra
FINAL:
    INT 21H     ;executa a funcao 
    ROL BX,CL   ;rotaciona para a esquerda
    DEC CH      ;tira 1 de ch
    JNZ INICIO  ;se for diferente de zero volta para o inicio

    mov ah,4ch  ;finaliza o programa
    int 21h     ;executa a funcao
MAIN ENDP
END MAIN 