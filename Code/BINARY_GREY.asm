
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



ASSUME CS:CODE, DS:DATA    

                  
    
DATA SEGMENT

    
    NUM DB 0ABH    
    
    RESULT DB 00H
    
DATA ENDS 



 ;binary b3     b2      b1      b0

 ;grey   b3   b3(+)b2 b2(+)b1  b1(+)b0  
 
 ; grey  g3     g2      g1      g0  
 
  
  
 ; carry, c=0
 
 ;binary b3     b2      b1      b0    c=0  
 
 ;RCR
 
 ;binary 0      b3      b2      b1    c=b0
   
 ;XOR  
 
 ; grey  g3     g2      g1      g0 
 
 

CODE SEGMENT 
    

    
    START:
    
    MOV AX, DATA      
    
    MOV DS, AX
    
    MOV AL, NUM     
    
    MOV BL, AL
    
    CLC
    
    RCR AL, 1
    
    XOR BL, AL
    
    MOV RESULT, BL
    
  


    
    MOV AH, 00H
    
    INT 21H 
    

    
    CODE ENDS

    END START
   

ret




