PORTB = $6000
PORTA = $6001
DDRB  = $6002
DDRA  = $6003

value = $0200 ; 2 bytes
mod10 = $0202 ; 2 bytes
message = $0204 ; 6 bytes
counter = $020a ; 2 bytes

E     = %10000000
RW    = %01000000
RS    = %00100000

    .org $8000

reset:
    ldx #$ff
    txs

    cli

    lda #%11111111 ; Set all pins on port B to output
    sta DDRB

    lda #%11100000 ; Set top 3 pins on port A to output
    sta DDRA

    lda #%00111000 ; Set 8-bit mode; 2 line display; 5x8 font
    jsr lcd_instruction

    lda #%00000010 ; Return Home
    jsr lcd_instruction

    lda #%00001111 ; Set Display ON; Curson ON; Blink ON
    jsr lcd_instruction

    lda #%00000110 ; Set Increment to right and shift cursor; don't shift display
    jsr lcd_instruction

    lda #%00000001 ; Clear All
    jsr lcd_instruction

    ldx #0
print1:
    lda message1, x
    beq bf_print2
    jsr print_char
    inx
    jmp print1

;bf_bf_print2:
;    lda #%00000001 ; Clear All
;    jsr lcd_instruction
;
;    lda #%00000010 ; Return Home
;    jsr lcd_instruction

bf_print2:
    ldx #0
print2:
    lda message2, x
    beq loop
    jsr print_char
    inx
    jmp print2

loop:
    jmp loop

message1: .asciiz "Marcolbr AGNPCL                        "
message2: .asciiz " "

lcd_instruction:
    ; jsr lcd_wait
    sta PORTB
    lda #0      ; Clear RS/RW/E bits
    sta PORTA
    lda #E      ; Set E bit to send instruction
    sta PORTA
    lda #0      ; Clear RS/RW/E bits
    sta PORTA
    rts

print_char:
    ; jsr lcd_wait
    sta PORTB
    lda #RS      ; Set RS; Clear RW/E bits
    sta PORTA
    lda #(RS | E)      ; Set E bit to send instruction
    sta PORTA
    lda #RS      ; Clear E bits
    sta PORTA
    rts

nmi:
irq:
    jmp bf_print2

    .org $fffa
    .word nmi
    .word reset
    .word irq