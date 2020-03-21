KEY_ESCAPE      = $1B00
KEY_LEFT        = $004B
KEY_RIGHT       = $004D

        org 100h

EntryPoint:
        mov     ax, $0003
        int     10h
        push    $B800
        pop     es

        mov     [wBorder], 40
.GameLoop:
        call    DrawDesk
        call    ReadKey


        call    ReadKey

        jmp     .GameLoop

        ret



PrintHex:
        mov     cx, 4
.PrintLoop:
        rol     dx, 4
        mov     ax, dx
        and     ax, $000F

        cmp     al, 10
        sbb     al, $69
        das

        mov     bl, $07
        mov     ah, $0E
        int     10h
        loop    .PrintLoop
        ret

ReadKey:
        xor     dx, dx
        mov     ax, $0C08
        int     21h
        mov     dh, al
        test    al, al
        jnz     @F
        mov     ah, $08
        int     21h
        mov     dl, al
@@:
        ret

DrawDesk:
        mov     bx, 25
        xor     di, di
.DrawLoop:
        mov     ax, $0700 or 176
        mov     cx, [wBorder]
        rep stosw

        mov     ax, $0700 or 178
        mov     cx, 80
        sub     cx, [wBorder]
        rep stosw

        dec     bx
        jnz     .DrawLoop
        ret

wBorder         dw      ?