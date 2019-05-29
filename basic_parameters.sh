#!/bin/sh


### parameters


usage_of_param()
{
  $#  传递到脚本的参数个数
  $*  以一个单字符串显示所有向脚本传递的参数。如"用「」括起来的情况、以1 n"的形式输出所有参数。
  $$  脚本运行的当前进程ID号
  $!  后台运行的最后一个进程的ID号
  $@  与相同，但是使用时加引号，并在引号中返回每个参数。如@"用「"」括起来的情况、以"2" … "$n" 的形式输出所有参数。
  $-  显示Shell使用的当前选项，与set命令功能相同。
  $?显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。
}


echo '$# = ' $#
echo '$* = ' $*
echo '$$ = ' $$
echo '$! = ' $!
echo '$@ = ' $@
echo '$- = ' $-
echo '$? = ' $?

func_2()
{
echo '$# = ' $#
echo '$* = ' $*
echo '$$ = ' $$
echo '$! = ' $!
echo '$@ = ' $@
echo '$- = ' $-
echo '$? = ' $?
}

echo 
echo 'call func_2 aaa bbb ccc ddd eee fff ggg hhh'
func_2 aaa bbb ccc ddd eee fff ggg hhh 

