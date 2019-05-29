#!/bin/sh


### variables

echo "test case 1: values for int and string"
value_int1="1"
value_int2=200

str_a="aaa"
str_b=bbb

echo value_int1 $value_int1
echo value_int2 $value_int2

echo str_a $str_a ${str_a}
echo str_b $str_b



### read-only variables
echo ""
echo "testcase 2: read-only variables"
ro_value_str="aaaaaaaaaa"
readonly ro_value_str

#ro_value_str=bbbbbbbbbbb
## above command will return failed





### unset values
echo 
echo "testcase 3:unset values"
value_int3=100
echo value_int3 $value_int3
unset value_int3
echo unset value_int3 $value_int3
