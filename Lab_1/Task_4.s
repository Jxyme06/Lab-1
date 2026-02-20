.section .bss
.global ram
.lcomm ram, 256          # Reserve 256 bytes of Ram (uninitialized memory)

.section .text
.globl fill_ram          # Make function visible to C program

fill_ram:
    # Write a program for the series 1+2+3+….+N (N=10) and put the sum into memory location 50H

    _start:
        movb $0, %al
        movb $1, %dl
        movb $10, %cl

    loop_start:
        addb %dl, %al
        incb %dl
        decb %cl
        jnz loop_start

        leaq ram(%rip), %rdi
        movb %al, 0x50(%rdi)

    ret                     # Return control back to C program

.section .note.GNU-stack,"",@progbits         