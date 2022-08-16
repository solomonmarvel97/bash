#!/bin/bash
 
# declare names as an indexed array
declare -a names
 
# initialize the array
names=( Miller Ted Susan Gary )
 
# access elements of array using index
echo ${names[2]}
 
# you may display the atrributes and value of each element of array
declare -p names



# declare an array
arr=( "bash" "shell" "script" )
 
# for loop that iterates over each element in arr
for i in "${arr[@]}"
do
    echo $i
done