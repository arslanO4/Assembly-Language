newline macro
    mov ah,02
    mov dl,10
    int 21h
endm
.model small 
.stack 100h
.data 
    var1 db "Enter 1 for Storing String$"  
    var2 db "Enter 2 for Comparing Two Strings$"
    var3 db "Enter 3 for Reversing a String$"
    choice db "Enter Your Choice: $"
    rev db 4 dup('$')
    store1 db ?
    nm1 db 'Hira$'
    nm2 db 'Hira$'
    cmp1 db 'Strings are Equal$'
    cmp2 db 'Strings are not equal$'
    val db 'Enter Value: $'
    val2 db 'You Entered: $'
.code 
main proc  
    mov ax,@data
    mov ds,ax
    mov es,ax
    newline
    mov ah,09
    lea dx,var1
    int 21h
    
    newline
    mov ah,09
    lea dx,var2
    int 21h
    
    newline
    mov ah,09
    lea dx,var3
    int 21h
        
    newline
    mov ah,09
    lea dx,choice
    int 21h
    
    mov ah,01
    int 21h    
    cmp al,'1'
    je store
    cmp al,'2'
    je compare
    cmp al,'3'
    je reverse    
    mov ah,4ch
    int 21h
    compare: 
        
    mov al, nm1
    mov bl,nm2

    cmp al,bl
    je equal 
    newline
    mov ah,09 
    lea dx,cmp2
    int 21h
    mov ah,4ch
    int 21h
    equal:
    newline
    mov ah,09 
    lea dx,cmp1
    int 21h
    mov ah,4ch
    int 21h 
    
    store:
    newline
    mov ah,09
    lea dx,val
    int 21h
    mov si, offset store1
     l1:
     mov ah,01
     int 21h    
     cmp al,13    ; Ascii of enter key
     je pend
     
     mov [si], al
     inc si 
     jmp l1
    
     pend:  

     newline       
    mov ah,09
      lea dx,val2
    int 21h
     mov dx, offset store1
     mov ah,09
     int 21h 
      
    
     mov ah, 4ch 
     int 21h 
    reverse:
       
    newline
    lea si,nm1+3
    lea di,rev

    std

    mov cx,4
    move:
    movsb
    add di,2
    loop move

    
    mov ah,09
    lea dx,rev
    int 21h

    mov ah, 4ch 
    int 21h 


main endp
end main