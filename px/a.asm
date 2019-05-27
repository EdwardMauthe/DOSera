.model tiny
.code
.186
org 100h
Start:

mov ax,13h
int 10h

X equ 10
Y equ 30
COLOR equ 5

mov ax,0A000h
mov es,ax
mov ax,Y

imul ax,320
add ax,X
mov bx,ax
mov al,COLOR
mov es:[bx],al

mov ah,2Ch
int 21h
mov al,dh
here:
sub dh,al
cmp dh,2
je over
mov ah,2Ch
int 21h
jmp here
over:

mov ax,3h
int 10h

ret

end Start
