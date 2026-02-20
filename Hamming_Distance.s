.section .data
msg_1:  .ascii "This is a test\n"
len = . - msg
msg_2:  .ascii "of the emergency broadcast\n"

.section .text
.global _start
_start:
    mov $1, %rax    # write
    mov $1, %rdi    # stdout
    mov $msg_1,%rsi   # buf
    mov $len,%rdx   # len
    syscall

    mov $60, %rax   # exit
    mov $0, %rdi    # status
    syscall