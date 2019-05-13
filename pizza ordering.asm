 .model small
.stack 100h 
.data
var db "                          Well Come To Delicious Pizza $"
var1 db "                                Our Menu $"
var2 db "	1.Valtellina   2.Pizza al Pesto   3.Rustica  4.Pizza tartufata $"
var3 db "	                Select your number $"
var4 db " 		1 small 2.medium  3.Large 4.Extra Large  $"
var5 db'Please Pay 250 Rs $'
var6 db'Please Pay 350 Rs$'
var7 db'Please Pay 450 Rs$'
var8 db'Please Pay 650 Rs$'
var9 db	'			select shape of pizza$'
var10 db '			1.Square  2.Triangle$'
var11 db '			thank you for your order$'



.code
start:

mov ax,@data
mov ds,ax 
  mov ah,0
    mov al,6
    int 10h
    
    mov ah,0BH
    mov bh,00h   ; set color
    mov bl,14
    int 10h
mov ah,09
lea dx,var
int 21h

Mov ah,02
Mov dl,0AH; 0AH move cursor to next line
int 21h

Mov ah,02
Mov dl,0dh; 0DH move cursor to start
int 21h


mov ah,09
lea dx,var1
int 21h

Mov ah,02
Mov dl,0AH; 0AH move cursor to next line
int 21h

Mov ah,02
Mov dl,0dh; 0DH move cursor to start
int 21h


mov ah,09
lea dx,var2
int 21h

Mov ah,02
Mov dl,0AH; 0AH move cursor to next line
int 21h

Mov ah,02
Mov dl,0dh; 0DH move cursor to start
int 21h

mov ah,09
lea dx,var3
int 21h

mov ah, 01
int 21h

Mov ah,02
Mov dl,0dh; 0DH move cursor to start
int 21h 


valtelenia:
mov ah,09
lea dx,var4
int 21h


mov ah,01
int 21h
cmp al,'1'
je l1
cmp al,'2'
je l2
cmp al,'3'
je l3

Mov ah,02
Mov dl,0AH; 0AH move cursor to next line
int 21h
Mov ah,02
Mov dl,0dh; 0DH move cursor to start
int 21h 



l1:
Mov ah,02
Mov dl,0AH; 0AH move cursor to next line
int 21h

Mov ah,02
Mov dl,0dh; 0DH move cursor to start
int 21h


mov ah,09
lea dx,var5
int 21h
jmp selectdia
loop l1

l2:
Mov ah,02
Mov dl,0AH; 0AH move cursor to next line
int 21h

Mov ah,02
Mov dl,0dh; 0DH move cursor to start
int 21h


mov ah,09
lea dx,var6
int 21h
jmp selectdia
loop l2

l3:
Mov ah,02
Mov dl,0AH; 0AH move cursor to next line
int 21h

Mov ah,02
Mov dl,0dh; 0DH move cursor to start
int 21h


mov ah,09
lea dx,var7
int 21h
jmp selectdia

selectdia:
mov ah,02
mov dl,10
int 21h


mov ah,09
lea dx,var9
int 21h

mov ah,02
mov dl,10
int 21h

mov ah,09
lea dx,var10
int 21h
mov ah,02
mov dl,10
int 21h
mov ah,01
int 21h
cmp al,'1'
je sq

cmp al,'2'
je tr

sq:




Mov ax,6
int 10h


    mov ah,0BH
    mov bh,00h   ; set color
    mov bl,5
    int 10h

;draw line
; LINE 1
MOv ah,0ch
mov al,1
mov cx,10
mov dx,10

L13:
int 10h
inc dx
cmp dx,50

jle L13


; LINE 2
;draw line
MOv ah,0ch
mov al,1
mov cx,10
mov dx,50

L12:
int 10h
inc cx
cmp cx,100

jle L12

; LINE 3
;draw line
MOv ah,0ch
mov al,1
mov cx,10
mov dx,10

L11:
int 10h
inc cx
cmp cx,100

jle L11

; LINE 4
;draw line
MOv ah,0ch
mov al,1
mov cx,100
mov dx,10

L10:
int 10h
inc dx
cmp dx,50

jle L10

;read keyboard

Mov ah,0
int 16h ;int 16h

;set text mode


Mov ax,3
int 10h


;return dos
mov ah,4ch
int 21h

tr:
Mov ax,6
int 10h


    mov ah,0BH
    mov bh,00h   ; set color
    mov bl,5
    int 10h


mov ah,0CH
mov al,1
mov cx,85
mov dx,70
l15:
int 10h
inc cx
inc dx

cmp cx,200
cmp dx,125
jle l15
;triangle leftline
mov ah,0CH
mov al,1
mov cx,195
mov dx,70
l20:
int 10h
dec cx
inc dx

cmp cx,40
cmp dx,125
jle l20
;triangle bottom

mov ah,0CH
mov al,1
mov cx,85
mov dx,70

l9:
int 10h
inc cx

cmp cx,195
jle l9


mov ah,09
lea dx,var11
int 21h

mov ah,4ch
int 21h


exitp:
mov ah,4ch
int 21h





end start
