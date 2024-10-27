TITLE DIAGONAL
.MODEL SMALL
.STACK 100h 
.DATA
    matriz db 31h,30h,30h,30h
           db 30h,32h,30h,30h
           db 30h,30h,33h,30h
           db 30h,30h,30h,34h
.CODE
MAIN PROC
         MOV  AX,@DATA
         MOV  DS,AX

         mov  cx,4
         xor  si,si
         xor  bx,bx
         mov  ah,2
    pt1: 
         MOV  Dl,matriz[bx][si]
         int  21h
         add  bx,4
         inc  si
         loop pt1

         MOV  AH,4CH
         INT  21H
MAIN ENDP
END MAIN 