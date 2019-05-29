#!/bin/sh



str_1='aaa'
str_2='bbb $str_1'
#### notes single quto will respect all info 

str_3="bbb $str_1"
#### 双引号中可以支持转移符和变量的引用


echo str_2 $str_2
echo str_3 $str_3




### 获取字符串长度
echo 
str_aaa="testabc"
str_length=${#str_aaa}
echo string $str_aaa length '${#string}' $str_length


###提取子字符串
##以下实例从字符串第 2 个字符开始截取 4 个字符：

string="runoob is a great site"
echo '${string:1:4}' ${string:1:4} 
# 输出 unoo





