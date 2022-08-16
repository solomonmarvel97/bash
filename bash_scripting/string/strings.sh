# In the following example, we use ${#string_variable_name} to find string length.

str="Good morning"
length=${#str}
echo "Length of '$str' is $length"


# Providing length is optional. If length is not specified, end of the string is considered end of the substring.

#!/bin/bash
 
str="TutorialKart"
 
subStr=${str:4:6}
 
echo $subStr


# string concatenation
str1="Learn"
str2=" Bash Scripting"
str3=$str1$str2
echo $str3

# concatenation variables to string
#!/bin/bash
n1=10
str1="Number of Apples : "
str1="$str1$n1"
echo $str1