
   org 100h


   mov di,OurArray
   mov bh,2
   mov cx,9
   mov bl,0
   mov [Sum],0

MainCycle:
        mov ax,[di]
        xor ah,ah

        cmp al,0
        je MainCycle.Continue

        div bh

        cmp ah,0
        je MainCycle.PodxZnach
        jmp MainCycle.Continue

.PodxZnach:
        mov ax,[di]
        xor ah,ah
        inc bl
        push ax
.Continue:
        inc di


loop MainCycle
;-----------------------------------------------------------------Poisk Crat Znach

        mov cl,bl

        mov ah,09
        mov dx,Stroshka
        int 21h

OutPutZnach:

        pop ax
        add [Sum],al

        add al,'0'

        mov ah,02
        mov dl,al
        int 21h

        mov ah,09
        mov dx,prob
        int 21h

        mov ah,08
        int 21h

loop OutPutZnach


 Summa:
        mov ah,09
        mov dx,sum
        int 21h

        add [Sum],'0'
        mov ah,09
        mov dx,Sum
        int 21h

        mov ah,08
        int 21h



        ret












OurArray db 1,2,6,3,5,9,5,23,0,5   ;10
Text db "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
Stroshka db 'Kolva elements kratnix 2: $'
sum db 13,10,"Sum = $"
prob db ' $'
Sum db 4 dup ("$")