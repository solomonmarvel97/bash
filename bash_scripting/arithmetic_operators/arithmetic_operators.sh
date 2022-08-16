#!/bin/bash
 
x=10
y=3
 
echo $(( x + y )) # addition
echo $(( $x + $y )) # also valid
 
echo $(( x - y )) # subtraction
echo $(( $x - $y )) # also valid
 
echo $(( x * y )) # multiplication
echo $(( $x * $y )) # also valid
 
echo $(( x / y )) # division
echo $(( $x / $y )) # also valid
 
echo $(( x ** y )) # exponentiation
echo $(( $x ** $y )) # also valid
 
echo $(( x % y )) # modular division
echo $(( $x % $y )) # also valid
 
(( x += 4 )) # increment variable by constant
echo $x
 
(( x -= 4 )) # decrement variable by constant
echo $x
 
(( x *= 4 )) # mulitply variable by constant
echo $x
 
(( x /= 4 )) # divide variable by constant
echo $x
 
(( x %= 4 )) # Remainder of Dividing Variable by Constant
echo $x