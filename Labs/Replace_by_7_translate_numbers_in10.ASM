
        org 100h


        mov cx,20
        mov di,OurArray
        mov al,0
        mov ah,7

Prohod_po_massivy:

        mov bl,[di]

        cmp ah,bl
         jb .Zamena_na_7
         jmp .Continue

.Zamena_na_7:
        mov byte[di],ah
        inc al

.Continue:
        inc di

loop Prohod_po_massivy

        xor ah,ah
        push ax

        mov cx,20
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

Vivod_Stroki:

        mov ah,09
        mov dx,Stroka
        int 21h


Vivod_Kolva_potoreniy:

        pop ax
        call Perevod_in_10_system

        mov ah,09
        mov dx,Kolvo
         int 21h

        mov ah,08
         int 21h

        ret

Perevod_in_10_system:

        mov bh, 10
        xor cx,cx

Cycle:
        div bh
        inc cx

        mov bl,al

        xor al,al
        push ax

        xor ax,ax
        mov al,bl

        cmp bl,0
         jne Cycle

        mov di,Kolvo

Put_razrad:
        pop ax

        add ah,'0'
        mov [di],ah
        inc di

loop Put_razrad


ret


OurArray db 9,0,11,7,6,12,12,95,6,2,9,9,9,9,5,8,1,47,10,8 ;10
Stroka db '',13,10,'Kolvo povtoreniy = $'
Kolvo db 4,0,4 dup ("$")