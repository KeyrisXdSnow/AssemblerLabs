
                                              ; ввод
        org 100h
                                              ; проверка на корректный ввод
                                              ; сама игрушка
         xor cx,cx
         mov cx,6
Welcome_text:

        push cx

        mov ah,09
        mov dx,text                                                                                    ;
        int 21h                                                                                        ;
                                                                                                       ;
        mov ah,0aH                                                                                     ;
        mov dx,ourNumber                                                                               ;
        int 21h                                                                                        ; 4

        xor di,di
        xor si,si

        mov di,ourNumber+2
        mov si,RandomNumber
;_------------------------------------------------------------------------------------------------------------------------
OurGame:
        xor cx,cx
        xor ax,ax                                  ; вылечить вывод кло-ва повторений
        mov cx,2
        mov al,byte[si]


Cycle:
          cmp al, byte[di]
             je .Narash
                    jg .More
                        jl .Less

  .More:
     mov ah,09
     mov dx,StrokMore
     int 21h

    pop cx
    call InPut_Cx

    loop Welcome_text
   jmp GameOver.Bad

  .Less:
     mov ah,09
     mov dx,StrokLess
     int 21h

    pop cx
    call InPut_Cx

    loop Welcome_text
  jmp GameOver.Bad

   .Narash:

     inc di
     inc si
     mov al,[si]
   loop Cycle

     jmp GameOver.Good

;-------------------------------------------------------------------------------------------------------------------------
  GameOver:
   .Bad:
     mov ah,09
     mov dx,StrBadJob
     int 21h

     mov ah,08
     int 21h
     ret

   .Good:
     mov ah,09
     mov dx,StrGoodJob
     int 21h

     mov ah,08
     int 21h
     ret

InPut_Cx:

   dec cl
   add cl,'0'
   mov ah,02
   mov dl,cl
   int 21h
   sub cl,'0'
   inc cl

  mov ah,09
  mov dx,attempt
  int 21h

 ret



StrokLess db 'Less.You have $'
StrokMore db 'More.You have $'
text db 'Put number ', 13,10, ' $'
ourNumber db 4,0,4 dup ("$")
textbadnumber db '   Incorrect Number                                                       $'
RandomNumber  db '53$'
textgoodnumber db  '   Good Stroka                                                          $'
attempt db " attempt",13,10,"$"
StrGoodJob db 'Well done you got $'            ; завершение игры
StrBadJob db ':C....You could not guess.Try,again ^_^ $'