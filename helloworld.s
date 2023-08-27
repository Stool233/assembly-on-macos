    # __TEXT段__cstring节定义了用来输出的字符串。
    # 这个节是专门用来存储C风格字符串的
    .section __TEXT, __cstring          # 这个指令将程序的控制转移到名为 __TEXT 的段中的 __cstring 节。这个节通常用来存储 C 风格的字符串。
helloworld:                             # 这是一个标签，代表后面的字符串的地址。
    # .asciz定义的是C风格字符串，
    # 地位和.quad这些汇编器指令相当。
    # 它会自动在字符串结尾补上\0.
    .asciz  "helloworld, %d\n"          # 这个指令在当前位置定义了一个以空字符 \0 结尾的 C 风格字符串 "helloworld, %d\n"。

    .text                               # 这个指令将程序的控制转移到 .text 节，通常在这里放置代码。
    .globl  _main                       # 这个指令使 _main 符号全局可见，也就是说其他文件也可以引用这个符号。
_main:                                  # 这是 _main 函数的开始
    pushq   %rbp                        # 将 rbp 寄存器的内容推入堆栈，保存当前函数的基址。
    leaq    helloworld(%rip), %rdi      # 将 helloworld 字符串的地址加载到 rdi 寄存器，rdi 是 printf 的第一个参数。
    movq    $114514, %rsi               # 将常数 114514 移动到 rsi 寄存器，rsi 是 printf 的第二个参数。
    movb    $0, %al                     # 将 0 移动到 al 寄存器，这是用于指定 printf 的浮点参数数量的。在这个例子中，没有浮点参数，所以设为 0。
    callq   _printf                     # 调用 printf 函数。

    popq    %rbp                        # 从堆栈中弹出之前保存的 rbp 寄存器的内容，恢复 rbp。
    movq    $0, %rax                    # 将 0 移动到 rax 寄存器，rax 寄存器用于存储函数的返回值，在这里，_main 返回 0。
    retq                                # 返回到调用者。

