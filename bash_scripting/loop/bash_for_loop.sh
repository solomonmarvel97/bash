#!/bin/bash
 
str="this example
demonstrates the for loop
that considers all white-space
characters as word separators"
 
## now loop through the above array
for i in $str;
do
   echo "$i" 
done