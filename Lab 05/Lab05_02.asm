TITLE ASTERISCOLOOP
.MODEL SMALL
.CODE
MAIN PROC

              MOV  AH,02H
              MOV  DL,'*'   ;define o carater a ser digitado
              MOV  CX,50 ;50 é o numero de vezes que sera digitado

    volta:    ;cria a sessao um para o retorno no loop
              int  21h
              loop volta

              mov  cx,50 ;50 é o numero requisitado

    voltadois:  ;cria a sessao dois para o retorno no loop
              MOV  ah,02H
              MOV  dl,10
              int  21h

              MOV  AH,02H
              MOV  DL,'*'   ;define o carater a ser digitado
              INT  21H  

              loop voltadois ;manda voltar para voltadois

              

    final:    
              MOV  AH,4CH ;Finaliza o programa
              INT  21H
MAIN ENDP
END MAIN