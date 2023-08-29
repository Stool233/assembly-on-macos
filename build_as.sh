## build exit
as exit.s -o exit.o
# ld exit.o -o exit -lSystem

# Updated on macOS 11 and above:
# from: https://stackoverflow.com/questions/52830484/nasm-cant-link-object-file-with-ld-on-macos-mojave
ld exit.o -o exit -L$(xcode-select -p)/SDKs/MacOSX.sdk/usr/lib -lSystem

# clang exit.c -o exit


## build local_var
as local_var.s -o local_var.o
ld local_var.o -o local_var -L$(xcode-select -p)/SDKs/MacOSX.sdk/usr/lib -lSystem


## build dataTest
as dataTest.s -o dataTest.o
ld dataTest.o -o dataTest -L$(xcode-select -p)/SDKs/MacOSX.sdk/usr/lib -lSystem

## build jmpTest
as jmpTest.s -o jmpTest.o
ld jmpTest.o -o jmpTest -L$(xcode-select -p)/SDKs/MacOSX.sdk/usr/lib -lSystem

## build Fibonacci
as Fibonacci.s -o Fibonacci.o
ld Fibonacci.o -o Fibonacci -L$(xcode-select -p)/SDKs/MacOSX.sdk/usr/lib -lSystem

## build test_syscall with debug
as test_syscall.s -g -o test_syscall.o
ld test_syscall.o -o test_syscall -L$(xcode-select -p)/SDKs/MacOSX.sdk/usr/lib -lSystem

## build test_syscall_fault with debug
as test_syscall_fault.s -g -o test_syscall_fault.o
ld test_syscall_fault.o -o test_syscall_fault -L$(xcode-select -p)/SDKs/MacOSX.sdk/usr/lib -lSystem


## build test_ld
as test_ld.s -o test_ld.o
as test_ld_tmp -o test_ld_tmp.o
ld test_ld.o test_ld_tmp.o -o test_ld -L$(xcode-select -p)/SDKs/MacOSX.sdk/usr/lib -lSystem