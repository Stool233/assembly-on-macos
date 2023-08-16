# exit.s
    .section    __TEXT,__text
    .globl      _main
_main:
    movq    $0, %rax    # # mov 0 to register rax
    retq
