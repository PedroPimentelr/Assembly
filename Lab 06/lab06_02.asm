TITLE LOOPs
.MODEL SMALL
.STACK 100h 
.DATA 
.CODE 
MAIN PROC
    mov dl,"*"  ;salva o caracter * em dl 
    mov ah,1    ;função de ler o t caracter digitado no teclado
repeat:
    int 21h   ; le caracter
    inc cl  ;adiciona 1 em cx 
    cmp al,13   ;compara al com 13
    jne repeat  ;se for igual, volta para repeat
    mov ah,2 ;imprime na tela
fim:
    int 21H ;executa função
    loop fim    ;faz o loop em fim
    mov ah,4ch  ; fim programa
    int 21h
    main endp
    end main