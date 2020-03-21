;; обнулить максимальный и минимаьный элемент

     org 100h                  ; ТАКМБЛЭТ

     mov ah,$0c
     int 21h

     mov cx,8
     mov di,ourArray+1
     mov si,ourArray
     mov al,[ourArray]


OurMaxElement:            ; Поиск max элемента
    cmp [di],al
     jg NewMaxElement
     jmp SkipMax

     NewMaxElement:
        mov al,[di]
        mov si,di

     SkipMax:
        inc di
loop OurMaxElement
; -----------------------------------------------------------------------------------------------------------------------------

  push si


  mov cx,8
  mov di,ourArray+1
  mov si,ourArray
  mov al,[ourArray]


OurMinElement:          ; Поиск min элемента
    cmp [di],al
     jl ourMinElement
     jmp SkipMin

     ourMinElement:
        mov al,[di]
        mov si,di

     SkipMin:
        inc di
loop OurMinElement
; -----------------------------------------------------------------------------------------------------------------------------


   call OdinakZnach
   pop si              ; поиск и обнуление повтр. max и min значений
   call OdinakZnach

; -----------------------------------------------------------------------------------------------------------------------------


   mov di,ourArray
   mov cx,10


Vivod:

   add byte[di],'0'

    mov ah,02H
    mov dl,[di]
    int 21h

    mov ah,$02
    mov dl,' '
    int 21h

   inc di
loop Vivod

     mov ah,$08
     int 21h
     ret


; Меточки и процедурки -----------------------------------------------------------------------------------------------------------------------------


OdinakZnach:
      mov al,byte[si]
      mov di,ourArray
      mov cx,10
        Cycle:
            cmp al,[di]
            je Prisvaev
            jmp Skiplol

        Prisvaev:
            mov byte[di],0

        Skiplol:
           inc di
           loop Cycle

ret


;-----------------------------------------------------------------------------------------------------------------------------

 text db 'Hello yse very ploxo. Mne eshe 30 snranitz logoki read, a time 00.01 :C', 9 dup (' '),'Max element = ','$'
 ourArray db 4,1,3,2,8,5,8,1,3,2
 MaxElement db 1 dup('$')

