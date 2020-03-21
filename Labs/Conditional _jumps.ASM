
org 100h

    ; Вывод поясняющего текста0

      mov ah,09h   ; передаем инстукцию для вывода строки
      mov dx,text0
      int 21h

    ; Ввод стоки с клавиатуры
      mov ah,0ah   ; передаем инструкцию 8-битному регистру ah функцию ввод с клавиатуры
      mov dx,stroka
      int 21h

    ; Пункт 1. Сравнение
      mov ah,[stroka+1]
      cmp ah,2   ; Меньше нижней границы
        jl BadStroka  ; <=
      cmp ah,9   ; Больше верхней границы больше верхней границы границы
        jg BadStroka   ; >=

    ; Пункт 2.
      mov ah,[stroka+4]
      mov bh,[stroka+3]
      cmp ah,bh
       jne BadStroka  ; not =


    ; Пункт 3
      mov ah,[stroka+2]
      cmp ah,47
     jl  BadStroka
      cmp ah,58
     jg  BadStroka

       mov ah,[stroka+1]
          cmp ah,'a'
     jl     GoodStroka
         cmp ah,'z'
     jg     GoodStroka

   GoodStroka:
      ; Вывод поясняющего текста0
          mov ah,09h   ; передаем инстукцию для вывода строки
          mov dx,goodtext
          int 21h
        ; Конец программы
      mov ah, 08h
      int 21h
      ret


   BadStroka:
      ; Вывод поясняющего текста0
          mov ah,09h   ; передаем инстукцию для вывода строки
          mov dx,badtext
          int 21h
        ; Конец программы
      mov ah, 08h
      int 21h
      ret

;---------------------------------------------------------------------------------------------------------------------- ^_^
;Метки

stroka db 10,0,10 dup("$")
text0 db ' Enter stroky {  symbols }:  $'    ; поясняющий текст0
badtext db 'No                                                                            $ '
goodtext db 'Yes                                                                          $'


