#!/bin/bash
 
# Scenario - File exists and is readable
if [ -r /home/tutorialkart/dummy.txt ];
then
    echo "/home/tutorialkart/dummy.txt is readable"
else
    echo "/home/tutorialkart/dummy.txt is not readable"
fi
 
# Scenario - File exists and is not readable
if [ -r /home/tutorialkart/sample.txt ];
then
    echo "/home/tutorialkart/sample.txt is readable"
else
    echo "/home/tutorialkart/sample.txt is not readable"
fi