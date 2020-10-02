; Creating a file 
.model small
.data
filename db 'CSE2006.txt'                           ; Name of the file to be created
handle dw ?                                         ; Handle to store the returned file handle
msg1 db ‘error$’                                    ; Error message
msg2 db ‘success$’                                  ; Success message
msg3 db 10h dup('1')                                ; “1111111111”
.code
start:
      mov ax, @data                                 ; Loads the memory location of data into AX
      mov ds, ax                                    ; Sets that memory location as DS
      mov cx, 0                                     ; CX →0
      mov dx, offset filename                       ; DX set to memory location of text file
      mov ah, 3ch                                   ; Create or Truncate file
      int 21h
      Jc err                                        ; Jump to err segment if Carry flag is set, i.e, error
      mov handle, ax                                ; Store the file handle from AX into Handle
      mov ah, 09h                                   ; Output of string at DX
      mov dx, offset msg2                           ; DX points to memory location of “success”
      int 21h
      mov bx, handle                                ; BX → Handle
      mov cx, 10h                                   ; Storing the file size in CX
      lea dx, msg3                                  ; DX points to message “1111111111”
      mov ah, 40h                                   ; Write to file at BX with data at DX
      int 21h
      Jmp nxt                                       ; Jump to nxt segment
err:
      mov ah, 09h                                   ; Output of string at DX
      lea dx, msg1                                  ; DX points to memory location of message “error”
      int 21h
nxt:
      mov ah, 4ch                                   ; Return control to the operating system
      int 21h
      
      
; Deleting the file created
model small
.data
filename db 'CSE2006.txt'                           ; Name of the file to be deleted (assuming already existing)
.code
start:
      mov ax, @data                                 ; Loads the memory location of data into AX
      mov ds, ax                                    ; Sets that memory location as DS
      mov dx,offset filename                        ; DX set to memory location of text file
      mov ah,41h                                    ; Delete File at location DX
      int 21h
      Jc err                                        ; Jump to err segment if Carry flag is set, i.e, error
      Jmp nxt                                       ; Jump to nxt segment
err:
      mov ah, 09h                                   ; Output of string at DX
      lea dx, msg1                                  ; DX points to memory location of message “error”
      int 21h
nxt:
      mov ah, 4ch                                   ; Return control to the operating system
      int 21h
