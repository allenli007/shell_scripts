#!/bin/sh





### find using regex to match 
example_change_blank_to_return()
{
[root@23-SLOT1:/tmp]# echo "9568256 8519680 133431296 133300224 133169152 133038080 65929216 131072 32899072 26607616 26476544 26345472 0" |
 tr ' ' '\n' | sort -n
 0
 131072
 8519680
 9568256
 26345472
 26476544
 26607616
 32899072
 65929216
 133038080
 133169152
 133300224
 133431296
}

example_change_capital
{
amosli@amosli-pc:~$ echo "HI_AMOS" | tr "A-Z" 'a-z'
hi_amos
}



example_3_encryp()
{
实际应用2，加密解密：
amosli@amosli-pc:~$ echo 12345 | tr '0-9' '987654321' ＃加密
87654
amosli@amosli-pc:~$ echo 87654 | tr '987654321' '0-9' #解密
12345
上面是一个非常有趣的小例子，通过映射来实现简单的加密解密，看懂这个例子，可以接着往下看古罗马时期发明的凯撒加密的一种变体ROT13
amosli@amosli-pc:~$ echo "hi,this is amosli" | tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
uv,guvf vf nzbfyv
amosli@amosli-pc:~$ echo "uv,guvf vf nzbfyv" | tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
hi,this is amosli

}

