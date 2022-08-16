#!/bin/bash
 
# if condition is true
if [ "hello" == "hello" ];
then
    echo hello == hello : is true condition
else
    echo hello == hello : is false condition
fi
 
# if condition is false
if [ "hello" == "bye" ];
then
    echo hello == bye : is true condition
else
    echo hello == bye : is false condition
fi