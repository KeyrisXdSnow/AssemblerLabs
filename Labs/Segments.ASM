;;; лаба работает, если все функции ближайшие, или если не вводить сегменты что-то такое
;;; а может и просто работает у меня какой-то баг при сдаче был
Format MZ
entry Program:Begin
SEGMENT Program

;----------Initialization A_B_C ----------

Begin:

        xor cx,cx
        mov cl,byte[X]
        push cx

       jmp Program3

 Continue :
          pop cx

        mov bx,[Result]
        rol bx,cl

        add bl,'0'

        mov di,ResultStr
        mov [di],bl

        mov ah,09
        mov dx,ResultStr
       int 21h

        mov ah,08
        int 21h

        ret


;----------Program_1----------------------------
Program1:


 mov ax,[X]
 mov bx,[Y]
 mov cx,[Z]
 xor dx,dx

 pusha

 call far  PROCEDURES : register_global
 popa

jmp Continue
;-----------------------------------------------

;----------Program_2----------------------------
 Program2:
  call far  PROCEDURES : register_global


jmp Continue
;-----------------------------------------------

;----------Program_3----------------------------
Program3:
 xor ax,ax
 xor cx,cx
 xor bx,bx

   mov ax,[X]
   push ax

   mov bx,[Y]
   push bx

   mov cx,[Z]
   push cx

  call procedure_stek

 jmp Continue

;-----------------------------------------------
procedure_stek :

push bp
mov bp, sp
xor ah, ah

 mov ax, [bp+8]

 mul ax
 mov dx,2
 mul dx


 mov bx, [bp+6]
 adc bx,ax

  mov ax,[bp+4]
 mov dx,5
 mul dx

 sbb bx,ax
 mov [Result] ,bx

mov sp, bp 
pop bp 
ret 6



;----------Data----------------------------
SEGMENT MYDATA

X dw 2
Y dw 4
Z dw 1
Two dw 2
Five dw 5
Result dw 4
ResultStr db '$$$$$$'

;------------------------------------------
SEGMENT  PROCEDURES

register_procedure :

        mul ax
        mov dx,2
        mul dx

        adc bx,ax

        xor ax,ax
        mov ax,cx

        xor dx,dx
        mov dx,5
        mul dx

        sbb bx,ax

        mov [Result],bx

       retf



register_global :

        mov ax,[X]
        mul [X]
        mul [Two]

        add ax,[Y]
        mov [X],ax


        mov ax,[Z]
        mul [Five]

        sbb [X],ax


        mov ax,[X]
        mov [Result],ax

       retf