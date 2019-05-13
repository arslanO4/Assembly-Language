.model small
.stack 100h
.data
str1 db'-----------------------------HISTORY OF DIAMOND---------------------------------$'
str2 db"1. The earliest diamonds were found in   India in 4th century BC.$"
str3 db'2. The youngest of these deposits were formed 900 million years ago. $'
str4 db'3. A majority of these early stones were transported along the network of trade routes that connected India and China, commonly known as the Silk Road$'
.code
linebreak proc
mov ah,02
mov dl,0ah
int 21h
ret 
linebreak endp
main proc
mov ax,@data
mov ds,ax
 
;  drawing diamond
Mov ax,6
int 10h
;draw line
; topLINE 1
MOv ah,0ch
mov al,1
mov cx,250
mov dx,10

L1:
int 10h
inc cx
cmp cx,350

jle L1
;left line
MOv ah,0ch
mov al,1
mov cx,250
mov dx,10
L2:
int 10h
dec cx
inc dx
cmp dx,20
jle L2

;right line
MOv ah,0ch
mov al,1
mov cx,350
mov dx,10
L3:
int 10h
inc cx
inc dx
cmp dx,20
jle L3
;bottom left line
MOv ah,0ch
mov al,1
mov cx,240
mov dx,20
L4:
int 10h
INC CX
inc dx
cmp dx,80
jle L4
; bottom right line
MOv ah,0ch
mov al,1
mov cx,360
mov dx,20
L5:
int 10h
dec CX
inc dx
cmp dx,80
jle L5
 
 ;printing the diamond history
 call linebreak
 call linebreak
 call linebreak
 call linebreak
 call linebreak
 call linebreak
 call linebreak
 call linebreak
 call linebreak
 call linebreak
 call linebreak
 mov ah,09
 lea dx,str1
 int 21h
 call linebreak
 call linebreak
  mov ah,09
  lea dx,str2
 int 21h
 call linebreak
  call linebreak
  mov ah,09
  lea dx,str3
 int 21h
 call linebreak
  call linebreak
  mov ah,09
  lea dx,str4 
 int 21h 
 ;moving out of the program
 mov ah,4ch
 int 21h
 main endp
 end main