
org 100h

    ; ����� ����������� ������0
      mov ah,09h   ; �������� ��������� ��� ������ ������
      mov dx,text0
      int 21h

    ; ���� ����� � ����������
      mov ah,0ah   ; �������� ���������� 8-������� �������� ah ������� ���� � ����������
      mov dx,stroka
      int 21h

      ; S2<-->S6 ������� ������� 2 � 6 ������� �����
        mov ah,[stroka+3]
        mov bh,[ stroka+7]
        mov [stroka+3],bh
        mov [ stroka+7],ah

       ; S3<--- S7 � (S5 � S8) �������� ������
          mov ah,[stroka+6]
          mov bh,[stroka+9]
          sub ah,bh  ;���������: (S5 � S8)=�
          mov bh,[stroka+8]
          sub bh,ah  ;��������� S7-�=y

        ; ������ 3 ������� �� ������ � ��������� ������� y
          mov [stroka+4],bh

         ; ������� ���������� ������
          mov ah,09h ; �������� ���������� 8-������� �������� ah ������� ����� ������
          mov dx,stroka
          int 21h;

    ; ����� ���������
      mov ah, 08h
      int 21h
      ret
;---------------------------------------------------------------------------------------------------------------------- ^_^
;�����
stroka db 10,0,10 dup ('$') ; ������ ����-�e��� $

text0 db ' Enter stroky { 8 symbols }:  $'    ; ���������� �����0
text1 db ' -Pynkt1: Poizoshla zamena S2<-->S6 symblos:  $'    ; ���������� �����1
text2 db ' -Pynkt1: zamena S2<-->S6,Pynkt2 zamena S7 - (S5 - S8) symblos:$'    ; ���������� �����2

