; emu8086

org  100h

jmp start

dir1 db "c:\siw6adil", 0
file1 db "c:\siw6adil\file1.txt", 0
handle dw ?

text db "siw6adil."
text_size = $ - offset text
text2 db "systemprogramming"
text2_size = $ - offset text2

start:
mov ax, cs
mov dx, ax
mov es, ax

; create c:\emu8086\vdrive\C\siw6adil
mov dx, offset dir1
mov ah, 39h
int 21h

; file: d:\emu8086\vdrive\C\siw6adil\file1.txt -in kyru jane ashu
mov ah, 3ch
mov cx, 0
mov dx, offset file1
int 21h
jc err
mov handle, ax
; seek:
mov ah, 42h
mov bx, handle
mov al, 0
mov cx, 0
mov dx, 10
int 21h
; file-ga jazu
mov ah, 40h
mov bx, handle
mov dx, offset text
mov cx, text_size
int 21h
; seek:
mov ah, 42h
mov bx, handle
mov al, 0
mov cx, 0
mov dx, 2
int 21h
; file-ga jazu
mov ah, 40h
mov bx, handle
mov dx, offset text2
mov cx, text2_size
int 21h
; jabamiz
mov ah, 3eh
mov bx, handle
int 21h
err:
nop

; file1.txt -joyu
mov ah, 41h
mov dx, offset file1
int 21h

; siw6adil -joyu
mov ah, 3ah
mov dx, offset dir1
int 21h

ret
