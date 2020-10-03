
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt





ASSUME CS:CODE,DS:DATA1 


DATA1 SEGMENT

A DB 02H

B DB 05H

SUM DB ?

CARRY DB 00H 


DATA1 ENDS



CODE SEGMENT

START:

MOV AX,DATA1

MOV DS, AX
           
           
           
MOV AL, A  

MOV BL, B

ADD AL, BL

JNC GO

MOV CARRY, 01H

GO: MOV SUM, AL 


MOV AH, 00H

INT 21H 

END START

CODE ENDS  



END


RET
