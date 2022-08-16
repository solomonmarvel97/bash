#!/bin/bash
 
# Scenario - File exists and is a directory
if [ -d /home/tutorialkart/ ];
then
    echo "/home/tutorialkart is directory"
else
    echo "/home/tutorialkart is not a directory"
fi
 
# Scenario - File exists and is not a directory
if [ -d /home/tutorialkart/sample.txt ];
then
    echo "/home/tutorialkart/sample.txt is a directory"
else
    echo "/home/tutorialkart/sample.txt is not a directory"
fi