        org 100h

        mov cx,9
        push cx
        mov bx,5
        push bx


        inc cx
        inc bx

        pop cx
        pop bx

        add cx,'0'

        mov ah,02
        mov dx,cx
        int 21h


        add bx,'0'

        mov ah,02
        mov dx,bx
        int 21h

        mov ah,08
        int 21h
        ret