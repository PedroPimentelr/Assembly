TITLE
.MODEL SMALL
.STACK 100h                                  
.DATA
VETOR DB 0,1,2,3,4,5,6
.CODE 
MAIN PROC 
    mov ax,@data
    mov ds,ax 
    xor bx,bx
    mov cx,7
    mov di,7
volta:
    mov bl,VETOR[di]
    dec di
    shl bl,1
    add bl, 30h
    mov ah,2
    int 21h
    loop volta

    mov ah,4ch
    int 21h
MAIN ENDP 
END MAIN