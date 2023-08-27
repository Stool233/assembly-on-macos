    .text
    .globl  _main
_main:
    movq    $0x2001, %rax
    movq    $0, %rdi
    syscall

