
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,0001h

;;; CODED BY BASIL JACOB (18BCE0956)

;4!=4*3*2*1

;;;LOOP for n! ;;;

mov cx,08h  ;;;; n value

lab1:mul cx

loop lab1 



;;; CODED BY BASIL JACOB (18BCE0956)
;;;LOOP for Permutation n!/(n-r)! ;;;

mov cx,08h

sub cx,07h


lab2:div cx

loop lab2 

;; Check ax register for the permutation value




;;; CODED BY BASIL JACOB (18BCE0956)
;;;; Loop for combination   n!/(n-r)!.r! ;;;


mov cx,07h

lab3:div cx

loop lab3

;; Check ax register for combination value ;;;            

