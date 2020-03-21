Format MZ
entry Main:Start 

SEGMENT Main 
Start: 
;================ MAIN ======================== 
mov ax, Data1 
mov ds, ax 

mov AH, 09h 
mov DX, EntX 
int 21h 

mov ah, 02h 
mov dx, 13 
int 21h 
mov dx, 10 
int 21h 

A_B_Input: 
mov di, 3 
Number_input: 



mov ax, 0c0ah 
mov dx, InputNum 
int 21h 

xor bx, bx 
mov bl, [InputNum+1] 
mov [InputNum+bx+2], '$' 


mov ah, 02h 
mov dx, 13 
int 21h 
mov dx, 10 
int 21h 


xor dx, dx 
xor ax, ax 
xor bx, bx 
xor cx, cx 


mov cl, [InputNum+1] 
mov dh, 10 

Num_to_reg: 
mul dh 
mov dl, [InputNum+2+bx] 
sub dl, '0' 
add al, dl 
inc bx 
loop Num_to_reg 

cont: 
PUSH AX 
dec di 
test di, di 
jnz Number_input 

pop ax 
mov [B], al 
pop ax 
mov [A], al 
pop ax 
mov [C],al 

;========== œ–Œ√–¿ÃÃ¿ 1 ================== 
mov AH, 09h 
mov DX, Prog1 
int 21h 

mov ah, 02h 
mov dx, 13 
int 21h

mov dx, 10 
int 21h 

call far procedures: Global_procedure 
call Number_Output 
;=============================================================== 


mov ah, 08h 
int 21h 

;========== œ–Œ√–¿ÃÃ¿ 2 ============================== 

mov AH, 09h 
mov DX, Prog2 
int 21h 

mov ah, 02h 
mov dx, 13 
int 21h 
mov dx, 10 
int 21h 

xor ah, ah 
xor cx, cx 
mov al, [A] 
mov bl, [B] 
mov cl, [C] 
call far procedures: Reg_procedure
call Number_Output 
;=============================================================== 

mov ah, 08h 
int 21h 


;========== œ–Œ√–¿ÃÃ¿ 3 ================================= 

mov AH, 09h 
mov DX, Prog3 
int 21h 

mov ah, 02h 
mov dx, 13 
int 21h 
mov dx, 10 
int 21h 

mov al, [A] 
xor ah, ah 
push ax 
mov al, [B] 
xor ah, ah 
push ax 
mov al, [C] 
xor ah, ah 
push ax 
call Stack_procedure 
call Number_Output 

mov ah, 08h 
int 21h 


mov ah, 4Ch 
mov al, 0 
int 21h 

;======================================================== 


Number_Output: 
mov dh, 10 
push bx 
push di 
mov di,InputNum 
add di, 2 
xor cx, cx 
xor bx, bx 
Pos: 
div dh 
mov bl, ah 
xor ah, ah 
add bl, '0' 
push bx 
inc cx 
test al, al 

jnz Pos 

L1: 
pop dx 
mov [di], dl 
inc di 
loop L1 
mov byte[di], '$' 


mov ah, 09h 
mov dx, InputNum 
add dx, 2 
int 21h 

mov ah, 02h 
mov dx, 13 
int 21h 
mov dx, 10 
int 21h 

xor bx, bx 
mov cx, 5 
L2: 
mov byte[InputNum+2+bx], ' ' 
inc bx 
loop L2 


pop di 
pop bx 

ret 


Stack_procedure: 
push bp 
mov bp, sp 
mov ax, [bp+8] 
mul al 
xor ah, ah 

push ax 
mov ax, [bp+6] 
mul al 
xor ah, ah 
mov bl, al 
pop ax 

add al,bl 
mul byte [bp+4] 
sal ax, C 

mov sp, bp 
pop bp 
ret 6 

;============================================================================================ 

SEGMENT Data1 

A db ? 
B db ? 
C db ? 
EntX db 'Please,enter value of X,Y,Z:$' 
Prog1 db 'Distant.Parameters through the register:$' 
Prog2 db 'Distant.Parameter via global variables:$' 
Prog3 db 'Distant.Parameters through the stack:$' 


InputNum db 5, 6 dup('') 



SEGMENT procedures 
Global_procedure: 
push ds 
mov ax, Data1 
mov ds, ax 

mov al, [A] 
xor ah, ah 
mul [A] 
mov bl,al 
mov al, [B] 
xor ah, ah 
mul [B] 
xor ah, ah 
add al, bl 
mul [C] 
sal ax,C 


pop ds 
retf 

Reg_procedure: 
mul al 
xor ah, ah 
mov dl,al 

mov al,bl 
mul bl 
xor ah,ah 

add al,dl 
mul cl 
sal al,cl 


retf