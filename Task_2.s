.section .bss
.global ram
.lcomm ram, 256          # Reserve 256 bytes of Ram (uninitialized memory)

.section .text
.globl fill_ram          # Make function visible to C program

fill_ram:
    # Store FFh into RAM locations 50H - 58H using indirect addressing

    movb $0xFF, %al
    movb %al, ram+0x50
    movb %al, ram+0x51
    movb %al, ram+0x52
    movb %al, ram+0x53
    movb %al, ram+0x54
    movb %al, ram+0x55
    movb %al, ram+0x56
    movb %al, ram+0x57
    movb %al, ram+0x58

    ret                     # Return control back to C program

.section .note.GNU-stack,"",@progbits         