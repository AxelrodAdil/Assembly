
org 100h

jmp start

string1 db '.lidA - ytilibom cimedacA$'  
; '$' string-tin ayaktalganyn bildiredi

start:      lea bx, string1
            mov si, bx

next_byte:  cmp [si], '$'       ; salistiru (cmp)
            je found_the_end
            inc si              ; ++
            jmp next_byte

found_the_end:  dec si          ; --
; bx bastapki indexke korsetip tur
; si songi indexke korsetip tur


; almastiru
do_reverse: cmp bx, si
            jae done
            
            ; swap...
            mov al, [bx]
            mov ah, [si]
            
            mov [si], al
            mov [bx], ah
            
            inc bx
            dec si
jmp do_reverse



; natizeni shigaru
done:       lea dx, string1
            mov ah, 09h
            int 21h

mov ah, 0
int 16h

ret