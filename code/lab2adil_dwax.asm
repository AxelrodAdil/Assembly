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

a word 2
b word 1
s word 3
d word 4

.code ; a+b+b+4-s-d

start:
mov ax,a
add ax,b
add ax,b
add ax,4
sub ax,s
sub ax,d


end start