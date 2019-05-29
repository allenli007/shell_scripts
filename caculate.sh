#!/bin/sh



##原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。
##expr 是一款表达式计算工具，使用它能完成表达式的求值操作。
##例如，两个数相加(注意使用的是反引号 ` 而不是单引号 ')：


val=`expr 2 + 2`
echo "两数之和为 : $val"

val2=`expr 22 \* 3`
    echo "expr 22 \* 3 =  $val2"

test_calculate()
{
    a=10
    b=20

    val=`expr $a + $b`
    echo "a + b : $val"

    val=`expr $a - $b`
    echo "a - b : $val"

    val=`expr $a \* $b`
    echo "a * b : $val"

    val=`expr $b / $a`
    echo "b / a : $val"

    val=`expr $b % $a`
    echo "b % a : $val"

    if [ $a == $b ]
    then
        echo "a 等于 b"
    fi

    if [ $a != $b ]
    then
        echo "a 不等于 b"
    fi

}

test_calculate 

