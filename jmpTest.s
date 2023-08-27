        .text
        .globl      _main

_main:

loop_begin:	movq	$0x114514, %rax
        cmp     $0x114514, %rax
        je	loop_begin
        movq    $0, %rax    # # mov 0 to register rax
	    retq
