data segment
    source db 21h, 34h, 56h, 73h, 32h, 68h, 95h, 87h     
    DEST db 8 DUP(?) 
    
data ends
         
code segment
    assume cs:code, ds:data

    start:  MOV AX, DATA
            MOV DS, AX
            MOV ES, AX  
            
            MOV CX, 8
            
            LEA SI, source
            LEA DI, dest
            CLD
            REP MOVSB                       

CODE ENDS
END START
