# local_var.s
#  int main()
# {
#   int a = 0x114514;
#   int b = 0x1919;
#   int c = 0x810;
#   return 0;
# }
    .section    __TEXT,__text
    .globl      _main
_main:
    .equ    a, -8
    .equ    b, -16
    .equ    c, -24
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $24, %rsp

    movq    $0x114514, a(%rbp)
    movq    $0x1919, b(%rbp)
    movq    $0x810, c(%rbp)

    movq    $0, %rax

    movq    %rbp, %rsp
    popq    %rbp
    retq
