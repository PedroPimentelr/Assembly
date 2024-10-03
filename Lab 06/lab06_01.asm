TITLE WHILE
.MODEL SMALL
.STACK 100h
.CODE 
MAIN PROC
    mov dl,"*" ;salva o caracter * em dl 
    mov ah,1 ;função de ler o t caracter digitado no teclado
repeat:
    int 21h   ; le caracter
    cmp al,13 ;compara AL com o CX
    je fim ;se for igual vai pro final
    inc cl  ;se for diferente, adiciona 1 em cx 
    jmp repeat  ;repete a função
fim:
    mov ah,02   ;se for igual, segue o codigo para imprimir na tela
    int 21H ;imprime o caracter
    loop fim    ;imprime (*) até decrementar cx por completo
    mov ah,4ch  ; fim programa
    int 21h
    main endp
    end main