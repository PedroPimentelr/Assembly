TITLE INVERTERV
.MODEL SMALL
.STACK 100h 
.DATA
vetor db 0,1,2,3,4,5,6 
.CODE 
MAIN PROC 
    mov ax,@data 
    mov ds,ax 
    mov cx,7
    mov si,7
    xor bx,bx
    call ler
    call invimp
    mov ah,4ch
    int 21h
MAIN ENDP 
ler proc
    mov bx,vetor[cx]
    push bx
    loop ler
    ret
invimp proc
    pop dl
    mov ah,2 
    int 21h
    dec si 
    jnz inverte
    ret
END MAIN 