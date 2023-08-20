# 查看可执行文件内容
otool -v -t ./exit


# 查看 __DATA段__data节
otool -v -s __DATA __data dataTest


# 查看 __TEXT段__text节
otool -v -t dataTest