# 查看可执行文件内容
otool -v -t ./exit


# 查看 __DATA段__data节
otool -v -s __DATA __data dataTest


# 查看 __TEXT段__text节
otool -v -t dataTest

# 查看test.o文件中__TEXT段__text节的代码：
otool -v -t test.o

# 查看 test.o 的符号表
nm -n -m test.o

# 查看动态链接
otool -L test
