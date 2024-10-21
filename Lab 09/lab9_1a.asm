TITLE PROGRAMA EXEMPLO PARA MANIPULAÇÃO DE VETORES USANDO BX
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
    lea bx,VETOR
VOLTA: 
    mov dl,[bx]
    inc bx 
    add dl,30h 
    mov ah,2 
    int 21h 
    loop volta 
    mov ah,4ch
    int 21h
MAIN ENDP 
END MAIN