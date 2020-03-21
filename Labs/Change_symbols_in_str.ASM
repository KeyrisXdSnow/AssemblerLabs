
org 100h

    ; Вывод поясняющего текста0
      mov ah,09h   ; передаем инстукцию для вывода строки
      mov dx,text0
      int 21h

    ; Ввод стоки с клавиатуры
      mov ah,0ah   ; передаем инструкцию 8-битному регистру ah функцию ввод с клавиатуры
      mov dx,stroka
      int 21h

      ; S2<-->S6 Менеяем местами 2 и 6 символы стоки
        mov ah,[stroka+3]
        mov bh,[ stroka+7]
        mov [stroka+3],bh
        mov [ stroka+7],ah

       ; S3<--- S7 – (S5 – S8) Изменяем строку
          mov ah,[stroka+6]
          mov bh,[stroka+9]
          sub ah,bh  ;Вычитание: (S5 – S8)=х
          mov bh,[stroka+8]
          sub bh,ah  ;Вычитнаие S7-х=y

        ; Замена 3 символа на символ с значением индекса y
          mov [stroka+4],bh

         ; Выводим изменённую строку
          mov ah,09h ; передаем инструкцию 8-битному регистру ah функцию вывод строки
          mov dx,stroka
          int 21h;

    ; Конец программы
      mov ah, 08h
      int 21h
      ret
;---------------------------------------------------------------------------------------------------------------------- ^_^
;Метки
stroka db 10,0,10 dup ('$') ; строка иниц-уeмая $

text0 db ' Enter stroky { 8 symbols }:  $'    ; поясняющий текст0
text1 db ' -Pynkt1: Poizoshla zamena S2<-->S6 symblos:  $'    ; поясняющий текст1
text2 db ' -Pynkt1: zamena S2<-->S6,Pynkt2 zamena S7 - (S5 - S8) symblos:$'    ; поясняющий текст2

