#!/bin/bash
 
# Scenario - File exists
if [ -a /home/tutorialkart/sample.txt ];
then
    echo "sample.txt - File exists."
else
    echo "sample.txt - File does not exist."
fi
 
# Scenario - File does not exists
if [ -a /home/tutorialkart/dummy.txt ];
then
    echo "dummy.txt - File exists."
else
    echo "dummy.txt - File does not exist."
fi