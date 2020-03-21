; заменить все элементы < 7 на 7

        org 100h

        mov cl,10
        mov di,OurArray
        xor ax,ax

Prohod_po_massivy:

        mov bl,[di]
        mov ah,7
        cmp bl,ah
        jb  .Zamena_na_7
        jmp .Continue

.Zamena_na_7:
        mov byte[di],7
        inc al

.Continue:
        inc di

loop Prohod_po_massivy

        xor ah,ah
        push ax

        mov cl,10
        mov di,OurArray

Vivod_Massiv:

        mov bl,[di]
        add bl,'0'

        mov ah,02
        mov dl,bl
        int 21h

        mov ah,02
        mov dl,' '
        int 21h

        inc di

loop Vivod_Massiv

        mov ah,09
        mov dx,text1
        int 21h

        pop ax
        add al,'0'

        mov ah,02
        mov dl,al
        int 21h

        mov ah,09
        mov dx,text2
        int 21h


        mov ah,08
        int 21h
        ret

text1 db "We replaced by 7 elements of the array $"
text2 db " times $"
OurArray db 9,0,4,7,9,8,5,6,9,2 ;10