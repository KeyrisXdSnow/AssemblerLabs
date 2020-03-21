; вводим сивол, в строке этот символ должен заменитс€ на сто€ющий после него символ по
; таблице кодов

        org 100h

        mov ah,09
        mov dx,text0
        int 21h

        mov ah,09
        mov dx,OurStr
        int 21h

        mov ah,09
        mov dx,HelloText
        int 21h

        mov ah,01
        mov dl,al
        int 21h

        xor ah,ah
        push ax

        mov ah,09
        mov dx,probel
        int 21h




        mov ah,08
        int 21h

        pop ax
        mov cl,19
        mov di,OurStr
Cycle:

        repne scasb

        dec di
        add byte[di],1

        inc di

        cmp cl,0
        jne Cycle
        jmp Final

Final:
        mov ah,09
        mov dx,OurStr
        int 21h

        mov ah,08
        int 21h
        ret




text0 db "Our String : $"
OurStr db "abcdrabcd;gyaavdcta",13,10,'$'
HelloText db "Hello, put simbol: $"
Symbol db '$$'
probel db '',13,10,'$'

