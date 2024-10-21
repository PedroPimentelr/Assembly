TITLE PROGRAMA EXEMPLO PARA MANIPULAÇÃO DE VETORES USANDO SI OU DI 
.MODEL SMALL
.STACK 100h
.DATA
VETOR DB 1,1,1,2,2,2
.CODE 
MAIN PROC 
    mov ax,@data 
    mov ds,ax 
    xor dl,dl 
    mov cx,6 
    xor di,di 
VOLTA:
    mov dl,VETOR[DI]
    inc di 
    add dl,30h
    mov ah,2 
    int 21h 
    loop volta 
    mov ah,4ch
    int 21h
MAIN ENDP 
END MAIN