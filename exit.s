# exit.s
    .section    __TEXT,__text
    .globl      _main
    .equ        maxCount, 0x114514
_main:
    movq    $maxCount, %rax    # # mov 0 to register rax
    retq
