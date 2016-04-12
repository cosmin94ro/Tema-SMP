; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; mod grafic
mov ah, 0
mov al, 13h
int 10h

; pereti
; latura inferioara
mov cx, 180
mov dx, 190
mov al, 15
latinf: mov ah, 0ch
        int 10h
        dec cx
        cmp cx, 100
        ja latinf

; latura superioara
mov cx, 180
mov dx, 110
mov al, 15
latsup: mov ah, 0ch
        int 10h
        dec cx
        cmp cx, 100
        ja latsup   

; latura dreapta
mov cx, 180
mov dx, 190
mov al, 15
latdr:  mov ah, 0ch
        int 10h
        dec dx
        cmp dx, 110
        ja latdr
    
; latura stanga
mov cx, 100
mov dx, 190
mov al, 15
latst:  mov ah, 0ch
        int 10h
        dec dx
        cmp dx, 109
        ja latst

; latura spate
mov cx, 220
mov dx, 170
mov al, 15
latsp:  mov ah, 0ch
        int 10h
        dec dx
        cmp dx, 90
        ja latsp

; latura inferioara spate
mov cx, 180
mov dx, 190
mov al, 15
latisp: mov ah, 0ch
        int 10h
        dec dx
        inc cx
        mov ah, 0ch
        int 10h
        inc cx
        cmp dx, 170
        jne latisp

; latura superioara spate
mov cx, 180
mov dx, 110
mov al, 15
latssp: mov ah, 0ch
        int 10h
        dec dx
        inc cx
        mov ah, 0ch
        int 10h
        inc cx
        cmp dx, 90
        jne latssp
        
; usa
; latura superioara usa
mov cx, 150
mov dx, 140
mov al, 15
usasup: mov ah, 0ch
        int 10h
        dec cx
        cmp cx, 130
        ja usasup   

; latura dreapta usa
mov cx, 150
mov dx, 190
mov al, 15
usadr:  mov ah, 0ch
        int 10h
        dec dx
        cmp dx, 140
        ja usadr
    
; latura stanga usa
mov cx, 130
mov dx, 190
mov al, 15
usast:  mov ah, 0ch
        int 10h
        dec dx
        cmp dx, 139
        jne usast

; acoperis
; acoperis stanga
mov cx, 100
mov dx, 110
mov al, 15
acst:   mov ah, 0ch
        int 10h
        dec dx
        inc cx
        cmp cx, 140
        jne acst

; acoperis dreapta
mov cx, 180
mov dx, 110
mov al, 15
acdr:   mov ah, 0ch
        int 10h
        dec dx
        dec cx
        cmp cx, 140
        jne acdr

; acoperis spate
mov cx, 220
mov dx, 90
mov al, 15
acsp:   mov ah, 0ch
        int 10h
        dec dx
        dec cx
        cmp cx, 180
        jne acsp

; acoperis varf
mov cx, 140
mov dx, 70
mov al, 15
acvf:   mov ah, 0ch
        int 10h
        dec dx
        inc cx
        mov ah, 0ch
        int 10h
        inc cx
        cmp dx, 50
        jne acvf

; fereastra
; vertical 1
mov cx, 190
mov dx, 150
mov al, 15
v1:     mov ah, 0ch
        int 10h
        dec dx
        cmp dx, 130
        jne v1

; vertical 2
mov cx, 200
mov dx, 145
mov al, 15
v2:     mov ah, 0ch
        int 10h
        dec dx
        cmp dx, 125
        jne v2

; vertical 3
mov cx, 210
mov dx, 140
mov al, 15
v3:     mov ah, 0ch
        int 10h
        dec dx
        cmp dx, 120
        jne v3
                
oblic:
;oblic 1
mov cx, 190
mov dx, 130
mov al, 15
ob1: mov ah, 0ch
     int 10h
     dec dx
     inc cx
     mov ah, 0ch
     int 10h
     inc cx
     cmp cx, 210
     jne ob1

; oblic 2
mov cx, 190
mov dx, 140
mov al, 15
ob2: mov ah, 0ch
     int 10h
     dec dx
     inc cx
     mov ah, 0ch
     int 10h
     inc cx
     cmp cx, 210
     jne ob2

;oblic 3
mov cx, 190
mov dx, 150
mov al, 15
ob3: mov ah, 0ch
     int 10h
     dec dx
     inc cx
     mov ah, 0ch
     int 10h
     inc cx
     cmp cx, 210
     jne ob3     

; terminare program
mov ah,00
int 16h

ret
