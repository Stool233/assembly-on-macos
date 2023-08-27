    .text
    .globl  _main
_main:
    movq    $0x200001, %rax
    movq    $0, %rdi
    syscall

