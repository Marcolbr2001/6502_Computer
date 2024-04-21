PORTB = $6000
PORTA = $6001
DDRB  = $6002
DDRA  = $6003

E     = %10000000
RW    = %01000000
RS    = %00100000

    .org $8000

reset:
    ldx #$ff
    txs

    lda #%11111111 ; Set all pins on port B to output
    sta DDRB

    lda #%11100000 ; Set top 3 pins on port A to output
    sta DDRA

    lda #%00111000 ; Set 8-bit mode; 2 line display; 5x8 font
    jsr lcd_instruction

    lda #%00001110 ; Set Display ON; Curson ON; Blink OFF
    jsr lcd_instruction

    lda #%00000110 ; Set Increment to right and shift cursor; don't shift display
    jsr lcd_instruction

    lda #"H" ; first letter
    jsr print_char

    lda #"e" ; first letter
    jsr print_char

    lda #"l" ; first letter
    jsr print_char

    lda #"l" ; first letter
    jsr print_char

    lda #"o" ; first letter
    jsr print_char

    lda #"," ; first letter
    jsr print_char
    
    lda #" " ; first letter
    jsr print_char

    lda #"w" ; first letter
    jsr print_char

    lda #"o" ; first letter
    jsr print_char

    lda #"r" ; first letter
    jsr print_char

    lda #"l" ; first letter
    jsr print_char

    lda #"d" ; first letter
    jsr print_char

    lda #"!" ; first letter
    jsr print_char

loop:
    jmp loop

lcd_instruction:
    sta PORTB
    lda #0      ; Clear RS/RW/E bits
    sta PORTA
    lda #E      ; Set E bit to send instruction
    sta PORTA
    lda #0      ; Clear RS/RW/E bits
    sta PORTA
    rts

print_char:
    sta PORTB
    lda #RS      ; Set RS; Clear RW/E bits
    sta PORTA
    lda #(RS | E)      ; Set E bit to send instruction
    sta PORTA
    lda #RS      ; Clear E bits
    sta PORTA
    rts

    .org $fffc
    .word reset
    .word $0000
