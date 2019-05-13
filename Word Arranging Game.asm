.model small
.stack 100h
.data
str1 db'--------Arslan Arshad--------$'
str2 db'---------CSC-17F-050---------$'
str3 db'-----------BSCS 4B-----------$'
str4 db'------WORD ARRANGING GAME------$'
str5 db'Enter your name: $'
str6 db'Instruction: You will be ask three questions you have to correct the word and press enter to proceed to next question$'
str7 db'Q1. dowo$'
str8 db'Q2. tcuon$'
str9 db'Q3. oxb$'
str10 db'Ans1 wood$'
str13 db'Ans2 count$'
str14 db'Ans3 box$'
str11 db',Good! You are Pass$'
str12 db'Try again, You are fail$'
str15 db 100 dup(' $')
str16 db 20 dup('$')
str17 db 20 dup('$')
str18 db 20 dup('$')
str19 db',Thanks for your efforts !$'
str20 db'-------------------------------------------------------$'
.code
newline proc
mov ah,02
mov dl,0ah
int 21h
ret 
newline endp

 main proc

 ;initializing string
   mov ax,@data
   mov ds,ax
   mov si,offset str15
   ; jumping to taking name and printing info page
   mov  al, 02h   ; select display page 1
   mov  ah, 05h   ; function 05h: select active display page
   int  10h
;New page background 
;graphics mode
 mov ah,0
 mov al,13
 int 10h
 mov ah,0bh
 mov bh,00h
 mov bl,3
 int 10h
    ;printing the details
    mov ah,09
    lea dx,str1
    int 21h
    call newline
    mov ah,09
    lea dx,str2
        
int 21h
    call newline
    mov ah,09
    lea dx,str3
    int 21h
    call newline
    call newline
    
   ;printing str4
   mov ah,09
   lea dx,str4
   int 21h
   call newline
   ;Taking name for input
   mov ah,09
   lea dx,str5
   int 21h
   mov si,offset str15
   l1:
   mov ah,01
    int 21h
    cmp al,13
    je inputname
    mov [si],al
    inc si
    jmp l1
    inputname:
    mov ah,02
    mov dl,10
    int 21h
    call newline
    ;line code
    Mov ax,6
int 10h
    ;Printing instructions
   mov ah,09
   lea dx,str6
   int 21h
   call newline
   call newline
      ;New page background 
     ;graphics mode
    mov ah,0
    mov al,13
    int 10h

    mov ah,0bh
    mov bh,00h
    mov bl,9
    int 10h
   ; jumping to question no 1
   mov  al, 03h   ; select display page 1
   mov  ah, 05h   ; function 05h: select active display page
   int  10h
   mov ah,09
   lea dx,str7
   int 21h
   call newline
   ;taking answers
   mov si,offset str16
   l2:
   mov ah,01
    int 21h
    cmp al,13
    je ans1
    mov [si],al
    inc si
    jmp l2
    ans1:
    mov ah,02
    mov dl,10
    int 21h
    call newline
    call newline
   ; jumping to new page
   mov  al, 04h   ; select display page 1
   mov  ah, 05h   ; function 05h: select active display page
   int  10h
      ;New page background 
     ;graphics mode
 mov ah,0
 mov al,13
 int 10h

 mov ah,0bh
 mov bh,00h
 mov bl,3
 int 10h
   ;printing q2
   mov ah,09
   lea dx,str8
   int 21h
   call newline
   ;taking answers
   mov si,offset str17
   l3:
   mov ah,01
    int 21h
    cmp al,13
    je ans2
    mov [si],al
    inc si
    jmp l3
    ans2:
    mov ah,02
    mov dl,10
    int 21h
    call newline
    call newline
   ; jumping to new page
   mov  al, 05h   ; select display page 1
   mov  ah, 05h   ; function 05h: select active display page
   int  10h
      ;New page background 
     ;graphics mode
 mov ah,0
 mov al,13
 int 10h

 mov ah,0bh
 mov bh,00h
 mov bl,8
 int 10h
   ;printing q3
   mov ah,09
   lea dx,str9
   int 21h
    call newline
   ;taking answers
    mov si,offset str18
    l4:
    mov ah,01
    int 21h
    cmp al,13
    je ans3
    mov [si],al
    inc si
    jmp l4
    ans3:
    mov ah,02
    mov dl,10
    int 21h
    call newline
    call newline
   ; jumping to new page
   mov  al, 06h   ; select display page 1
   mov  ah, 05h   ; function 05h: select active display page
   int  10h
   ;Return the answer
   mov ah,09
   lea dx,str15
   int 21h
   ;giving the answer 
   mov ah,09
   lea dx,str19
   int 21h
   call newline
      mov ah,09
   lea dx,str10
   int 21h
   call newline
   mov ah,09
   lea dx,str13
   int 21h
    call newline
   mov ah,09
   lea dx,str14
   int 21h
 call newline
   ;Exiting to DOS
   end1:
   mov ah,4ch
   int 21h
  main endp
 end main