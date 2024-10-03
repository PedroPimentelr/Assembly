TITLE DIVISAO
.MODEL SMALL 
.STACK 100H
.DATA
    MSG1 DB "Digite o dividendo:$",10,13
    MSG2 DB 10,13,"Digite o divisor:$",10,13
    QUO  DB 10,13,"Quociente:$",10,13
    RES  DB 10,13,"Resto:$"
.CODE
MAIN PROC
              MOV AX,@DATA     ;Move os dados em @data para ax
              MOV DS,AX        ;Os dados em ax vão para DS que mostra as mensagens

              MOV AH,09        ;exibe mensagem
              LEA DX,MSG1      ;pega a mensagem 1
              INT 21H          ;executa a função

              MOV AH,1         ;pede o caractere
              INT 21H          ;executa a função
              MOV BL,AL        ;move al para bl
              AND BL,0Fh       ;transforma o caractere em numero decimal

              MOV AH,09        ;exibe mensagem
              LEA DX,MSG2      ;acha a mensagem 2
              INT 21H          ;executa a função

              MOV AH,1
              INT 21H          ;executa a função
              AND AL,0Fh
              XOR BH,BH        ;limpa os dados em BH
    SUBTRACAO:
              SUB BL,AL        ;faz a subtração de BL com AL
              INC BH           ;diminui BH em 1
              CMP BL,AL        ;compara AL com BL
              JAE SUBTRACAO    ;Faz a volta para subtração se AL for maior ou igual a BL

              OR  BH,30H       ;transforma BH em caractere novamente

              MOV AH,09        ;exibe mensagem
              LEA DX,QUO
              INT 21H

              MOV DL,BH        ;move BH para DL
              MOV AH,2         ;exibe o numero
              INT 21H          ;executa a função

              MOV AH,09        ;exibe mensagem
              LEA DX,RES       ;mostra a mensagem de resultado
              INT 21H          ;executa a função
              MOV AH,2         ;exibe o numero
              OR  BL,30H       ;transforma BL em caractere denovo
              MOV DL,BL        ;move BL para DL
              INT 21H          ;executa a função

              MOV AH,4CH       ;finaliza o programa
              INT 21H          ;executa a função
MAIN ENDP
END MAIN 