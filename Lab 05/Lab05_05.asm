TITLE SOMATORIA
.MODEL SMALL
.STACK 100h
.DATA
    MSG1 db "Digite um numero:$"
    MSG2 db "A somatoria dos numeros foi:$"
.CODE
MAIN PROC
    MOV AX,@DATA    ;acessa os dados em @data
    MOV DS,AX
    MOV CX,5

numero: ;cria a sessao numero 
    MOV AH,9
    lea dx,MSG1     ;exibe msg1
    INT 21h

    MOV AH,01h  ;move 01h para ah
    INT 21h

    SUB AL,30H  ;subtrai 30h de al

    add bl,AL   ;adiciona al em bl

    mov AH,02H  ;move 02h para ah
    MOV DL,10   ;move 10 para dl
    INT 21h

    LOOP numero ;cria o loop para numero

somanumeros:    ;cria a sessao somanumeros

    MOV AH,09H  ;move 09h para ah
    LEA DX, MSG2    ;exibe msg2
    INT 21h

    ADD BL,30H  ;adiciona 30h em bl
    MOV AH,02H  ;move 02h para ah
    MOV DL,BL   ;move bl para dl
    INT 21h

FIM:    ;finaliza o programa
   MOV AH,4CH
   INT 21H
MAIN ENDP
END MAIN    
