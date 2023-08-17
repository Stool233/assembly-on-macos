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

