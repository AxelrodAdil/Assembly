.486
.model flat, stdcall
option casemap:none

include /masm32/include/windows.inc
include /masm32/include/kernel32.inc
include /masm32/include/user32.inc
include /masm32/include/debug.inc

includelib /masm32/lib/user32.lib
includelib /masm32/lib/kernel32.lib
includelib /masm32/lib/debug.lib

.data

t db 5
j db 6

.code ; (t*t-1)/(j-4)-5

start:
mov al,t
mul t
mov dx,ax
sub dx,1
mov ax,0
mov ax,dx
mov dx,0

mov dl,j
sub dl,4
div dl

mov dx,ax
sub ax,5

end start