
# this is a single line comment in bash
echo Learn Bash Scripting

a=2 # this is also a comment, but after the command in same line
b=4
# addition : this is another single line comment
c=$(($a + $b))
# echo result to console
echo $a + $b = $c



#!/bin/bash
 
# this is a single line comment in bash
echo Learn Bash Scripting
 
<<COMMENT
    This is a multiple line comment
    In Bash Scripting
COMMENT
echo Good Day!

<<COMMENT
    This is a multiple line comment
    End of the example
COMMENT