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