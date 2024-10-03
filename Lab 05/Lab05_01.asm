TITLE ASTERISCO
.MODEL SMALL
.CODE
MAIN PROC

              MOV bl,50     ;50 é o numero de vezes que o caracter vai ser impresso
    parteum:  
              MOV AH,02H
              MOV DL,'*'    ;* é o caractere a ser impresso
              INT 21H
              DEC BL    ;diminui o numero em BL

              cmp bl,0
              JG  parteum   ;pula para a parteum se for maior

              MOV bl,50 ;numero de vezes 

    partedois:
              MOV AH,02H
              MOV DL,10 
              INT 21H
              MOV AH,02H
              MOV DL,'*'    ; * é o caractere requisitado
              INT 21H
              DEC bl    ;diminui o numero em bl
              CMP bl,0  ;compara bl com 0
              JG partedois  ;pula para a partedois se for maior
    final:    
              MOV AH,4CH
              INT 21H       ;finaliza o programa
MAIN ENDP
END MAIN