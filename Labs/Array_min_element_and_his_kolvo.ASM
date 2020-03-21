
        org 100h

        mov cx,10       ; naiti min                     ;
                                                        ;
        mov di,OurArray                                 ;di
        mov al,[OurArray]                               ;di
        mov si,OurArray+1
        mov bh,-1

MainCycle:

        push di
        push si
        cmp al,bh
        jg MainCycle.Continue
         jmp Lylyly

.Continue:

        mov cx,21                       ; al min

        mov di,OurArray
        mov al,[OurArray]
        mov si,OurArray+1

        call CycleMinElement ; al result



Lylyly:
        inc si


        pop si
        pop di
        mov bh,al


loop MainCycle

mov ah,08
int 21h
ret


;-------------------------------------------------------------------------

CycleMinElement:            ; POISK MIN ELEMENT


        cmp al,[si]
         jg .NewMinElement
         jmp .Continue

.NewMinElement:
        mov al,[si]
        mov di,si

.Continue:
        inc si
        loop CycleMinElement
        push ax

        mov cx,22
        mov si,OurArray
                xor bx,bx

Kolvo:
        cmp al,[si]
        je .Narash
        jmp .Continue

.Narash:
    inc bl


.Continue:
        inc si
 loop Kolvo

        mov ah,09
        mov dx,Text
        int 21h
        pop ax
        xor ah,ah
        add al,'0'

        mov ah,02
        mov dl,al
        int 21h

        mov ah,09
        mov dx,Prob
        int 21h


        add bl,'0'

        mov ah,02
        mov dl,bl
        int 21h

        mov ah,08
        int 21h


ret
;--------------------------------------------------------------------------

Text db 'Kolvo min element $'
Prob db ' $',13,10
OurArray db 1,2,3,4,5,6,7,8,9,4,0,1,4,7,9,8,3,4,6,0,2,4,5   ;23
min db 0