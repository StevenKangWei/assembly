ASSUME CS:CODE

CODE SEGMENT

    dw 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h

    MOV BX, 0
    MOV AX, 0
    MOV CX, 8

S:  ADD AX, CS:[BX]
    ADD BX, 2
    LOOP S

    MOV AX, 4C00H
    INT 21H


CODE ENDS

END