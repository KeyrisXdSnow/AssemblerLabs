
org 100h

    ; ����� ����������� ������0

      mov ah,09h   ; �������� ��������� ��� ������ ������
      mov dx,text0
      int 21h

    ; ���� ����� � ����������
      mov ah,0ah   ; �������� ���������� 8-������� �������� ah ������� ���� � ����������
      mov dx,stroka
      int 21h

    ; ����� 1. ���������
      mov ah,[stroka+1]
      cmp ah,2   ; ������ ������ �������
        jl BadStroka  ; <=
      cmp ah,9   ; ������ ������� ������� ������ ������� ������� �������
        jg BadStroka   ; >=

    ; ����� 2.
      mov ah,[stroka+4]
      mov bh,[stroka+3]
      cmp ah,bh
       jne BadStroka  ; not =


    ; ����� 3
      mov ah,[stroka+2]
      cmp ah,47
     jl  BadStroka
      cmp ah,58
     jg  BadStroka

       mov ah,[stroka+1]
          cmp ah,'a'
     jl     GoodStroka
         cmp ah,'z'
     jg     GoodStroka

   GoodStroka:
      ; ����� ����������� ������0
          mov ah,09h   ; �������� ��������� ��� ������ ������
          mov dx,goodtext
          int 21h
        ; ����� ���������
      mov ah, 08h
      int 21h
      ret


   BadStroka:
      ; ����� ����������� ������0
          mov ah,09h   ; �������� ��������� ��� ������ ������
          mov dx,badtext
          int 21h
        ; ����� ���������
      mov ah, 08h
      int 21h
      ret

;---------------------------------------------------------------------------------------------------------------------- ^_^
;�����

stroka db 10,0,10 dup("$")
text0 db ' Enter stroky {  symbols }:  $'    ; ���������� �����0
badtext db 'No                                                                            $ '
goodtext db 'Yes                                                                          $'


