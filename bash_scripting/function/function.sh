#!/bin/bash

# bash function example
sampleFunction () {
    echo Hello from Sample Function.
}

# bash function example
function sampleFunction {
    echo This is another way to define function in bash scripting.
}

# override 'ls' command for 'ls -ltr'
echo () {
    builtin echo -n `date +"[%m-%d %H:%M:%S]"` ": "
    builtin echo $1
}

echo "Maverick Reporting. Over."


sampleFunction