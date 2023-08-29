        .data
var:    .asciz  "hello, world!\n"

        .text
        .globl  _main
_func:
        retq
_main:
        pushq   %rbp

        callq   _func                   # internal call
        leaq    var(%rip), %rdi         # internal variable
        movb    $0, %al
        callq   _printf                 # dylib call
        movq    tmp_var(%rip), %rdi     # external variable
        callq   _tmp_func               # external call

        popq    %rbp
        movq    $0, %rax
        retq
