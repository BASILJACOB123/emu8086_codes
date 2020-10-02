; Creating the file
.model small
.data
filename db 'CSE2006.txt'     ; Name of the file to be created
handle dw ?                   ; Handle to store the returned file handle
msg1 db ‘error$’              ; Error message
msg2 db ‘success$’            ; Success message
msg3 db 10h dup('1')          ; “1111111111”
.code
start:
mov ax, @data                 ; Loads the memory location of data into AX
mov ds, ax                    ; Sets that memory location as DS
mov cx, 0 ; CX →0
mov dx, offset filename       ; DX set to memory location of text file
mov ah, 3ch                   ; Create or Truncate file
int 21h
Jc err                        ; Jump to err segment if Carry flag is set, i.e, error
mov handle, ax                ; Store the file handle from AX into Handle
mov ah, 09h                   ; Output of string at DX
mov dx, offset msg2           ; DX points to memory location of “success”
int 21h
mov bx, handle                ; BX → Handle
mov cx, 10h                   ; Storing the file size in CX
lea dx, msg3                  ; DX points to message “1111111111”
mov ah, 40h                   ; Write to file at BX with data at DX
int 21h
Jmp nxt                       ; Jump to nxt segment
err:
mov ah, 09h                   ; Output of string at DX
lea dx, msg1                  ; DX points to memory location of message “error”
int 21h
nxt:
mov ah, 4ch                   ; Return control to the operating system
int 21h


; Opening the file created
.model small
.data
filename db 'CSE2006’.txt'    ; Name of the file to be read or opened
msg1 db ‘Error$’              ; Error message
handle dw ?                   ; Handle to store the returned handle while opening
buffer db 10h dup(?)          ; Buffer of size specified to read the contents
.code
start:
mov ax, @data                 ; Loads the memory location of data into AX
mov ds, ax                    ; Sets that memory location as DS
mov al,0 ; AL →0
mov dx, offset filename       ; DX set to memory location of text file
mov ah, 3dh                   ; Open existing file at DX
int 21h
jc err                        ; Jump to err segment if Carry flag is set, i.e, error
mov handle, ax                ; Move the file handle return at AX into Handle
mov bx, handle                ; BX → Handle
mov cx, 10h                   ; Storing the no. of bytes to be read in CX
mov dx, offset buffer         ; DX points to memory location of buffer
mov ah, 3fh                   ; Read from file handle at BX in to DX
int 21h
mov cx, 10h                   ; Storing the file size in CX to read the number of char.
mov dx, offset buffer         ; DX points to memory location of buffer
mov ah, 09h                   ; Output string at DX
int 21h
jmp nxt                       ; Jump to k segment
err:
mov ah, 09h                   ; Output string at DX
lea dx, msg1                  ; DX points to memory location of “error”
int 21h
nxt:
mov ah, 4ch                   ; Return control to the operating system
int 21h
