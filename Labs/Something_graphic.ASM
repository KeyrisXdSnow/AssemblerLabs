        org 100h

        mov ah,00h     ; 640x350
        mov AL,10h
        int 10h

        call DrawDesk

        xor ax,ax
        int 16h

        mov ax,3
        int 10h

        mov ah,08
        int 21h

        ret


DrawDesk:
        call Granitsha



Draw_Head:
                                                          ; 15 белый 8 - серый   7
        mov [Radius], 100
        mov byte[Colour],7


FFFF:
        mov [Y_Center],200
        mov [X_Center],640+300
        mov [X],0
        mov [Y],0

        call Draw_Cycle

        mov [Y_Center],198
        mov [X_Center],640+300
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],202
        mov [X_Center],640+300
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],196
        mov [X_Center],640+300
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],204
        mov [X_Center],640+300
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],194
        mov [X_Center],640+300
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],206
        mov [X_Center],640+300
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],200
        mov [X_Center],640+300-1

        mov [X],0
        mov [Y],0
        call Draw_Cycle
        mov [Y_Center],200
        mov [X_Center],640+300+1
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        dec [Radius]

        jne FFFF

;==========================================================


Draw_Heaeeeed:
                                                          ; 15 белый 8 - серый
        mov [Radius], 70
        mov byte[Colour],7
.FfFFF:
        mov [Y_Center],180

        mov [X_Center],150
        mov [X],0
        mov [Y],0

        call Draw_Cycle

        mov [Y_Center],181
        mov [X_Center],150
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],179
        mov [X_Center],150
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],182
        mov [X_Center],150
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],178
        mov [X_Center],150
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],183
        mov [X_Center],150
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],177
        mov [X_Center],150
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],184
        mov [X_Center],150

        mov [X],0
        mov [Y],0

        call Draw_Cycle
        mov [Y_Center],176
        mov [X_Center],150
        mov [X],0
        mov [Y],0

        mov [Y_Center],185
        mov [X_Center],150

        mov [X],0
        mov [Y],0

        call Draw_Cycle
        mov [Y_Center],175
        mov [X_Center],150
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        dec [Radius]

        jne .FfFFF









DRaw_Eyes:
Prav:
   ;============Правый глаз =======================
           mov [Radius], 8
           mov [Colour],16;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 .FFF:

        mov [Y_Center],162
        mov [X_Center],180
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],161
        mov [X_Center],179
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],163
        mov [X_Center],179
        mov [X],0
        mov [Y],0
        call Draw_Cycle


        dec [Radius]

        jne .FFF


DRaw_Eye2s:
.Prav:
   ;============Правый глаз =======================
           mov [Radius], 8
           mov [Colour],16;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 .FFF:



        mov [Y_Center],161
        mov [X_Center],129
        mov [X],0
        mov [Y],0
        call Draw_Cycle

        mov [Y_Center],163
        mov [X_Center],129
        mov [X],0
        mov [Y],0
        call Draw_Cycle


        dec [Radius]

        jne .FFF

;;;;;;;;;;;;;hOGA


oNE:
        mov [Colour],5

        mov [x1],220        ;
        mov [y1],260       ;
        mov [x2],220     ;
        mov [y2],350    ;
          call Line

        mov [x1],220        ;
        mov [y1],350       ;
        mov [x2],210     ;
        mov [y2],340    ;
          call Line


        mov [x1],210        ;
        mov [y1],340       ;
        mov [x2],200     ;
        mov [y2],350    ;
          call Line

        mov [x1],200        ;
        mov [y1],350       ;
        mov [x2],200     ;
        mov [y2],235    ;
          call Line

sECOND:


        mov [x1],270        ;
        mov [y1],300       ;
        mov [x2],270     ;
        mov [y2],350    ;
          call Line

        mov [x1],270        ;
        mov [y1],350       ;
        mov [x2],260     ;
        mov [y2],340    ;
          call Line


        mov [x1],260        ;
        mov [y1],340       ;
        mov [x2],250     ;
        mov [y2],350    ;
          call Line

        mov [x1],250        ;
        mov [y1],350       ;
        mov [x2],250     ;
        mov [y2],290    ;
          call Line


ERWQ3:


        mov [x1],350        ;
        mov [y1],295       ;
        mov [x2],350     ;
        mov [y2],350    ;
          call Line

        mov [x1],350        ;
        mov [y1],350       ;
        mov [x2],340     ;
        mov [y2],340    ;
          call Line


        mov [x1],340        ;
        mov [y1],340       ;
        mov [x2],330     ;
        mov [y2],350    ;
          call Line

        mov [x1],330        ;
        mov [y1],300       ;
        mov [x2],330     ;
        mov [y2],350    ;


          call Line

ERWQ4:


        mov [x1],390        ;
        mov [y1],257       ;
        mov [x2],390     ;
        mov [y2],350    ;
          call Line

        mov [x1],390        ;
        mov [y1],350       ;
        mov [x2],380     ;
        mov [y2],340    ;
          call Line


        mov [x1],380        ;
        mov [y1],340       ;
        mov [x2],370     ;
        mov [y2],350    ;
          call Line

        mov [x1],370        ;
        mov [y1],350       ;
        mov [x2],370     ;
        mov [y2], 280    ;


          call Line

YCHI:

RIGHT:
        mov [x1],200        ;
        mov [y1],125       ;
        mov [x2],200     ;
        mov [y2],80    ;
        call Line

        mov [x1],200        ;
        mov [y1],80       ;
        mov [x2],160     ;
        mov [y2],110   ;
        call Line

lEFT:
        mov [x1],100        ;
        mov [y1],125
        ;
        mov [x2],100     ;
        mov [y2],80    ;
        call Line

        mov [x1],100        ;
        mov [y1],80
        ;
        mov [x2],140     ;
        mov [y2],105   ;
        call Line

rot:

        mov [x1],135        ;
        mov [y1],200
        ;
        mov [x2],155     ;
        mov [y2],220    ;
        call Line

        mov [x1],175        ;
        mov [y1],200
        ;
        mov [x2],155     ;
        mov [y2],220   ;
        call Line



RET


        mov [Y_Center],450        ;
        mov [X_Center],130       ;
       MOV ebx,90

 PRAMAYX:
  PUSH ebx

        mov ah,0ch     ; спец функция для рисовки пикселя
        mov al,[Colour]       ;цвет
        ;------------------
        mov ecx,[X_Center]   ; x координата
        adc ecx,ebx
        ;--------------------
        mov edx,227
        int 10h
        pop ebx
        dec ebx
        jne PRAMAYX

       ret

        mov [x1],370      ;;
        mov [y1],235        ;
        mov [x2], 600        ;
        mov [y2], 325         ;
          call Line

        mov [x1],240
        mov [y1],220
        mov [x2],90
        mov [y2], 120
        call Line

        mov [x1],240
        mov [y1],235
        mov [x2],90
        mov [y2], 335
        call Line

       mov [Y_Center],450        ;
        mov [X_Center],380       ;
       MOV ebx,90

 PRAMAYY:

  PUSH ebx

        mov ah,0ch     ; спец функция для рисовки пикселя
        mov al,[Colour]       ;цвет
        ;------------------
        mov ecx,[X_Center]   ; x координата
        adc ecx,ebx
        ;--------------------
        mov edx,227
        int 10h
        pop ebx
        dec ebx
        jne PRAMAYY


        ret

Draw_Cycle :

.Rezhet_X:
       inc [X]
       mov eax,[X]
       push eax

.Razhet_Y:
        mov eax,[Radius]     ; R-X
        sbb eax,[X]

        mov ebx,[X]          ; X+R
        adc ebx,[Radius]



        mul ebx              ;(R-X)(R+X)


        mov [Y],eax
        finit
        fild [Y]             ; sqrt(Y)
        fsqrt
        fist [Y]

        mov eax,[Y]
        mul [mn]
       mov [Y],eax

     ;   fld [X]
     ;   frndint
     ;   fistp [X]

         mov eax,[X]
         mul eax
         mov [X],eax
        finit
        fild [X]             ; sqrt(Y)
        fsqrt
        fist [X]


        mov [cex],4

Cycle:

        cmp [cex],4
          je Shetvert_4
        cmp [cex],3
          je Shetvert_3
        cmp [cex],2
          je Shetvert_2
        cmp [cex],1
          je Shetvert_1

        jmp Draw_zhast_cryga

Shetvert_1:

         jmp Draw_zhast_cryga

Shetvert_2:

        neg [X]

         jmp Draw_zhast_cryga


Shetvert_3:

        neg [X]
        neg [Y]

         jmp Draw_zhast_cryga

Shetvert_4:

        neg [Y]
         jmp Draw_zhast_cryga



Draw_zhast_cryga:

        mov ah,0ch     ; спец функция для рисовки пикселя
        mov al,[Colour]       ;цвет
        ;------------------
        mov ecx,[X_Center]   ; x координата
        adc ecx,[X]
     ;   push ecx
        ;--------------------
        mov edx,[Y_Center]       ; y координата
        sbb edx,[Y]
     ;   push edx
        int 10h


 mov edx,[Y_Center]       ; y координата
        sbb edx,[Y]
        mov ecx,[X_Center]   ; x координата
        adc ecx,[X]

Proverka_Pixel1 :
        inc eax
        call Draw_Proverka_Pixel

 mov edx,[Y_Center]       ; y координата
        sbb edx,[Y]
        mov ecx,[X_Center]   ; x координата
        adc ecx,[X]

Proverka_Pixel2 :
        dec eax
        call Draw_Proverka_Pixel


 mov edx,[Y_Center]       ; y координата
        sbb edx,[Y]
        mov ecx,[X_Center]   ; x координата
        adc ecx,[X]

Proverka_Pixel3 :
        inc cx
        call Draw_Proverka_Pixel


 mov edx,[Y_Center]       ; y координата
        sbb edx,[Y]
        mov ecx,[X_Center]   ; x координата
        adc ecx,[X]

Proverka_Pixel4 :
        dec ecx
        call Draw_Proverka_Pixel



 mov edx,[Y_Center]       ; y координата
        sbb edx,[Y]
        mov ecx,[X_Center]   ; x координата
        adc ecx,[X]

Proverka_Pixel5 :
        inc ecx
        inc edx
        call Draw_Proverka_Pixel

 mov edx,[Y_Center]       ; y координата
        sbb edx,[Y]
        mov ecx,[X_Center]   ; x координата
        adc ecx,[X]

Proverka_Pixel6 :
        dec ecx
        dec edx
        call Draw_Proverka_Pixel

 mov edx,[Y_Center]       ; y координата
        sbb edx,[Y]
        mov ecx,[X_Center]   ; x координата
        adc ecx,[X]

Proverka_Pixel7 :
        inc ecx
        dec edx
        call Draw_Proverka_Pixel

 mov edx,[Y_Center]       ; y координата
        sbb edx,[Y]
        mov ecx,[X_Center]   ; x координата
        adc ecx,[X]

Proverka_Pixel8 :
        dec ecx
        inc edx
        call Draw_Proverka_Pixel

        ;; провермяем соседние пи хели



        cmp [Y],0
         jl r
         jmp q

r:
        neg[Y]
q:
        cmp [X],0
         jl rrrr
          jmp e

rrrr:
        neg [X]

e:
        dec [cex]
          jne Cycle



  pop ecx
       mov [X],ecx
        cmp ecx,[Radius]
         jne Draw_Cycle


        ret


Line:

 jmp Main


Narash_x:

        cmp cx,[x2]
         jg .Decrem
            jl .Increm
.Decrem:
        dec [x1]
        jmp Con
.Increm:
        inc [x1]

        jmp Con

Narash_y:

        cmp bx,[y2]
         jg .Decrem
            jl .Increm
.Decrem:
        dec [y1]
        jmp Main
.Increm:
        inc [y1]


Main:

        call Start

        xor cx,cx
        mov cx,[x1]
        xor bx,bx
        mov bx,[y1]

        cmp cx,[x2]
         jne Narash_x

Con:
        cmp bx,[y2]
        jne Narash_y

 ret


Start:

        mov ax,[x2]
        sbb ax,[x1]   ;
        mov [deltax],ax  ; dx= x2-x1
        xor ax,ax

        mov ax,[y2]
        sbb ax,[y1]   ;
        mov [deltay],ax  ; dy= y2-y1
;============================================
Sravn_dx:
        cmp [deltax],0
        jg .Kyrlik
        jmp .NeKyrlik

.Kyrlik:
        mov [incX],0
        jmp Sravn_dy

.NeKyrlik:
       mov [incX],-1

Sravn_dy:
        cmp [deltay],0
        jg .Kyrlik
        jmp .NeKyrlik

.Kyrlik:
        mov [incY],0
        jmp Continue

.NeKyrlik:
       mov [incX],-1

;============================================
Continue:

Proverka_b_0_bx:

        cmp [deltax],0
        jl .Modyl_X
        cmp [deltay],0
        jl .Modyl_Y
        jmp .Skip
.Modyl_X:
        neg [deltax]

.Modyl_Y:
       neg [deltay]

.Skip:
        xor ax,ax
        mov ax,[deltay]
        cmp ax,[deltax]
         jl .L
         jmp .B

.L:
       mov ax,[deltax]


.B:
        mov word[d],ax

;============================================

       mov ax,[x1]
       mov [currentX],ax

       mov ax,[y1]
       mov [currentY],ax

        xor ax,ax

        mov ah,0ch      ; срец функция для рисовки пикселя
        mov al,[Colour]        ;цвет
        mov cx,[currentX]      ; x координата
        mov dx,[currentY]       ; y координата
        int 10h

Cyclee:
        xor ax,ax
        mov ax,[errorX]
        adc ax,[deltax]         ; errorx = errorx + dx
        mov [deltax],ax

        xor ax,ax
        mov ax,[errorY]        ; errory = errory + dy
        adc ax,[deltay]
        mov [deltay],ax

        mov ax,[errorX]
        mov bx,word[d]
        mov cx,[currentX]
        mov dx,[incX]

        call MyIf

        mov [errorX],ax
        mov [currentX], cx
        ;------------
        mov ax,[errorY]
        mov bx,word[d]
        mov cx,[currentY]
        mov dx,[incY]

        call MyIf

        mov [errorY],ax
        mov [currentY], cx
        ;------------
         mov ah,0ch      ; срец функция для рисовки пикселя
        mov al,[Colour]        ;цвет
        mov cx,[currentX]      ; x координата
        mov dx,[currentY]      ; y координата
        int 10h

ret

MyIf:

        cmp ax,bx
        jge  .Bolshe
        jmp .Yse

.Bolshe:
        sbb ax,bx
        adc cx,dx

.Yse:
        ret




Granitsha:
       ; левый верхний
        mov ah,0ch      ; срец функция для рисовки пикселя
        mov al,[Colour]        ;цвет
        mov ecx,0      ; x координата
        mov edx,0       ; y координата
        int 10h

         ; левый нижний
        mov ah,0ch      ; срец функция для рисовки пикселя
        mov al,[Colour]        ;цвет
        mov ecx,0      ; x координата
        mov edx,349       ; y координата
        int 10h

         ; правый верхний
         mov ah,0ch      ; срец функция для рисовки пикселя
        mov al,[Colour]        ;цвет
        mov ecx,639      ; x координата
        mov edx,0       ; y координата
        int 10h

         ; правый нижний
        mov ah,0ch      ; срец функция для рисовки пикселя
        mov al,[Colour]        ;цвет
        mov ecx,639      ; x координата
        mov edx,349       ; y координата
        int 10h
ret



House:
      mov [cxcx],50
        mov cx,50

        mov [X],0
         mov [gap],0

        mov eax,[Radius]
        mov [Y],eax       ; y:=r;


        mov [d],2
        mov eax,[Radius]     ;  d:=3-2*y;
        adc eax,eax
        sbb [d],eax

        mov [X],0

Cyclxxe:


Yes :

       call Draw    ;      gap = 2 * (delta + y) - 1;

       mov eax,[delta]
       adc eax,[Y]
       adc eax,eax
       dec eax
       mov [gap],eax

       cmp [gap],0
       jle Mda
       jmp Cont

Mda:
       cmp [delta],0
       jl yps
       jmp Cont

yps:

        inc [X]
        mov eax,[X]
        adc eax,eax
        inc eax
        adc [delta],eax
        jmp Mda
Cont:

       cmp [gap],0
       jg .Mdas
       jmp fibal

.Mdas:
       cmp [delta],0
       jg .yps
       jmp fibal

.yps:
        dec[Y]
        mov eax,[Y]
        adc eax,eax
        inc eax
        sbb [delta],eax
        jmp  .Mdas
fibal:
        inc [Y]
        mov eax,[X]
        sbb eax,[Y]
        adc eax,eax
        adc [delta],eax

        dec[Y]


         dec [cxcx]
         cmp [cxcx],0
         jne Yes

ret

Draw:

        mov ah,0ch     ; спец функция для рисовки пикселя
        mov al,[Colour]       ;цвет
        ;------------------
        mov ecx,[X]   ; x координата
        adc ecx,[X_Center]
        ;--------------------
        mov edx,[Y]       ; y координата
        neg edx
        adc edx,[Y_Center]
        int 10h      ;     PutPixel( _x + x, _y - y, 255);

        mov ah,0ch     ; спец функция для рисовки пикселя
        mov al,[Colour]       ;цвет
        ;------------------
        mov ecx,[X]   ; x координата
        neg ecx
        adc ecx,[X_Center]
        ;--------------------
        mov edx,[Y]       ; y координата
        neg edx
        adc edx,[Y_Center]
        int 10h      ;     PutPixel( _x + x, _y - y, 255);

ret

Zacracit:

        mov ebx,[X_Center]
        adc ebx,[Radius]

        mov ecx,[X_Center]
        sbb ecx,[Radius]

ycle:
       push ebx
        push ecx

        mov ah,0ch     ; спец функция для рисовки пикселя
        mov al,3       ;цвет
        ;------------------
   ;     mov ecx,ebx   ; x координата
        ;--------------------
        mov edx,[Y_Center]      ; y координата
        int 10h

        pop ecx
        inc ecx

        pop ebx

        cmp ecx,ebx
        jle ycle

ret

Draw_Proverka_Pixel :

        mov ah,0ch     ; спец функция для рисовки пикселя
        mov al,[Colour]       ;цвет
        ;------------------
      ;  mov ecx,eax   ; x координата
        ;--------------------
      ;  mov edx,ebx      ; y координата

        int 10h

                ret


            ;
cxcx dw 50
d dd 0
gap dd 0
delta dd 0

;=========Data========================================
wBorder         dd      ?
Y_Center dd 200
X_Center dd 640+300

a dd 0
b dd 0
c dd 0
Radius dd   100
X dd -1
Y dd 0
Promesh_Result dd ?
Delta dd 0
N dd 15
X1 dd 0.1
cex dd 4


currentX dw 0
currentY dw 0
x2 dw 330
y2 dw 300

x1 dw 3
y1 dw 3
errorX dw 0
errorY dw 0
deltax  dw 0
deltay dw 0
incX dw 0
incY dw 0
Colour db 4
tmp dw 0
mn dd 1

ColorObvodka db 2

fsttmp dw 0
fsttemp  dw 0
Temp dw 0