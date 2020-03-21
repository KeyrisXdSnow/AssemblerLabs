
   org 100h
   mov di,OurArray+10
   mov al,byte[di]

   mov si,OurArray+9
   mov ah,byte[si]
   mov cx,10
Cycle :
   mov di,OurArray+10
   mov al,byte[di]

   mov si,OurArray+9
   mov ah,byte[si]


Sortirovka:

   cmp al,ah
    jl Swap
    jmp Continue

Swap:
    xchg al,ah
    mov byte[di],al
    mov byte[si],ah

Continue:
    dec si
    dec di
    mov al,byte[di]
    mov ah,byte[si]


    cmp si,OurArray
     jne Sortirovka
     je  F

F:
loop Cycle

Final:
     mov cx,10
     mov di,OurArray+1

cycle  :

      mov bl,[di]
      add bl,'0'

      mov ah,02
      mov dl,bl
      int 21h

      mov ah,02
      mov dl,' '
      int 21h

      inc di

loop cycle


     mov ah,08
     int 21h
     ret

; ограничения 1 элемент не учитывается
OurArray db 5,5,6,2,7,1,7,2,7,9