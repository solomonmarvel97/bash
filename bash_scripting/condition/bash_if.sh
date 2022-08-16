#!/bin/bash
 
# if condition (greater than) is true
if [ 8 -gt 7 ];
then
    echo "is 8 greater than 7 : true "
fi
 
# if condition (greater than) is false
if [ 7 -gt 8 ];
then
    echo "is 7 greater than 8 : false "
fi
 
# if condition (less than) is true
if [ 7 -lt 8 ];
then
    echo "is 7 lesser than 8 : true "
fi
 
# if condition (lesser than) is false
if [ 8 -lt 7 ];
then
    echo "is 8 lesser than 7 : false "
fi
 
# if condition (equal to) is true
if [ 8 -eq 8 ];
then
    echo "is 8 equals 8 : true "
fi
 
# if condition (equal to) is false
if [ 7 -eq 8 ];
then
    echo "is 7 equals 8 : false "
fi