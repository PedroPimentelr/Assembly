TITLE LETRASA
.MODEL SMALL 
.STACK 100h 
.DATA
    VETOR DB 'aliencaixaluvassanto'
.CODE
MAIN PROC
         MOV  AX,@DATA
         MOV  DS,AX

         MOV  CX,20
         XOR  SI,SI
         XOR  DX,DX
    PT1: 
         MOV  BX, VETOR[SI]
         INC  SI
         CMP  BX,41h
         JNE  PT2
         ADD  DX,1
    PT2: 
         LOOP PT1
         LEA  DX, VETOR
         MOV  AH,2
         INT  21H
    
         MOV  AH,4CH
         INT  21H
MAIN ENDP
END MAIN 