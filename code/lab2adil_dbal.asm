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

a db 2
b db 3
s db 3
d db 4

.code ; a+b+b+4-s-d

start:
mov al,a
add al,b
add al,b
add al,4
sub al,s
sub al,d


end start