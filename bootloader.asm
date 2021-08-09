;*******************************************
; bootloader.asm 
; Simple Bootloader
;*******************************************
org 0x7c00
bits 16
start: jmp boot

;; constant and variable definitions
msg db "Say hello to the sketch os.", 0ah, 0dh, 0h

boot:
    cli ; no interrupts
    cld ; all that we need to wait
    hlt ; halt the system

; 512 Bytes are there. Clear the rest of the bytes with 0

times 510 - ($-$$) db 0
dw 0xAA55 ; Boot Signature
