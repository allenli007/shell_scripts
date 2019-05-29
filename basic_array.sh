#!/bin/sh




array_name=(
value0
value1
value2
value3
)

array_name2=(value0  value1 value2 value3)
echo ""
echo array_name[0] ${array_name[0]}
echo  array_name[1] $array_name[1]   need bracket '{}' '${array_name[1]}' ${array_name[1]}

### echo all array in the array
echo ""
echo 'echo ${array_name[@]}' output: ${array_name[@]}


###### length
# 取得数组元素的个数
length_1=${#array_name[@]}
# 或者
length_2=${#array_name[*]}

# 取得数组单个元素的长度
length_3=${#array_name[n]}

echo get array counter '${#array_name[@]}' length $length_1 
echo get array counter '${#array_name[*]}' length $length_2 
echo get element string length '${#array_name[n]}' $length_3
echo 





