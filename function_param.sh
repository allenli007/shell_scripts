#!/bin/sh


test_func1()
{
   echo '$1 = ' $1
   set $1=100
   return 0
}



aaa=20
echo "aaa=" $aaa
test_func1 aaa
echo "aaa=" $aaa

