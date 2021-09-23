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

a dd 2
b dd 3
s dd 3
d dd 4

.code ; a+b+b+4-s-d

start:
mov eax,a
add eax,b
add eax,b
add eax,4
sub eax,s
sub eax,d


end start