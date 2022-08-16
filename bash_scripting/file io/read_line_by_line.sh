#!/bin/sh
 
i=1
 
while read line; do 
    # line is available for processing
    echo Line $i : $line 
    i=$(( i + 1 ))
done < sampleFile.txt