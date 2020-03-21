
        org 100h

        mov di,Stroka+3
        mov al, 'a'
        mov cl,10
        mov [number],48
        push bx

Main_cycle:

        push ax
        call Poisk_Elements

        cmp cl,0
        jne Continue
        jmp Stop


Continue:

        add [number],bh


        mov ah,02
        mov dl,[number]
        int 21h
        mov ah,02
        mov dl,' '
        int 21h

        inc di
        pop ax
        jmp Main_cycle


 Stop:

        cmp [number]  ,0
        je Final_no_ne_do_final
        jmp Final

Final_no_ne_do_final:

        mov ah,09
        mov dx,Strrr
        int 21h

Final:

        mov ah,08
        int 21h
        int 20h


Poisk_Elements:


        mov bh,cl

        repne scasb
        dec di


        sub bh,cl

        ret

Stroka db 10,0,10, 'dbcsaarrrr$'
number db 00
Strrr db "Takix elementov v stroke net :C $$"
