TITLE MULTIPLICACAO
.MODEL SMALL 
.STACK 100H
.DATA
    MSG1 DB "Digite o multiplicando:$",10,13
    MSG2 DB 10,13,"Digite o multiplicador:$",10,13
    PROD DB 10,13,"Produto:$",10,13
.CODE
MAIN PROC
                  MOV AX,@DATA         ;move os dados de @data para ax
                  MOV DS,AX            ;move os dados de data para ds que executa as mensgens

                  MOV AH,09            ;exibe mensagem
                  LEA DX,MSG1          ;pega a mensagem 1
                  INT 21H              ;executa a função

                  MOV AH,1             ;Guarda o multiplicando
                  INT 21H              ;executa a função
                  MOV BL,AL            ;move o multiplicando para BL
                  AND BL,0Fh           ;transforma o caractere em numero decimal

                  MOV AH,09            ;exibe mensagem
                  LEA DX,MSG2          ;pega a mensagem 2
                  INT 21H              ;executa a função

                  MOV AH,1             ;Pede um caractere
                  INT 21H              ;executa a função
                  AND AL,0Fh           ;transforma o caractere em numero decimal
                  MOV CL,AL            ;move al para o contador CL
                  XOR BH,BH            ;limpa os dados em bh
    MULTIPLICACAO:
                  ADD BH,BL            ;faz a adição de bh com bl, que esta vazio
                  DEC CL               ;tira 1 do contador
                  CMP CL,0             ;compara cl com 0
                  JNE MULTIPLICACAO    ;volta até cl ficar com 0

                  OR  BH,30H           ;transforma em caractere novamente

                  MOV AH,09            ;exibe mensagem
                  LEA DX,PROD          ;acha mensagem do produto
                  INT 21H              ;executa a função
                  MOV AH,2             ;exibe o numero produto
                  MOV DL,BH            ;move o numero de BH para DL que exibe a mensagem
                  INT 21H              ;executa a função

                  MOV AH,4CH           ;finaliza o programa
                  INT 21H              ;executa a função
MAIN ENDP
END MAIN     