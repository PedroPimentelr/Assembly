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
    lea si,VETOR 
VOLTA: 
    mov dl,[si]
    inc si 
    add dl,30h 
    mov ah,2 
    int 21h
    loop volta 
    mov ah,4ch
    int 21h
MAIN ENDP 
END MAIN