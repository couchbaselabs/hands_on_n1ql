#!/bin/bash

# START is the number of where the new slide will go.
# END is the number of the current final slide.

# To insert a slide at 41, given a 47 slide total, run this script as follows:
# 	./insert_slide.sh 41 47
# This will copy slide-47.md to slide-48.md, slide-46.md to slide-47.md, etc stopping after copying slide-41.md to slide-42.md.
# 
# Go ahead and edit slide-41.md as desired (slide-42.md now contains the old slide-41.md)
# 

START=$1
END=$2
i=$END
j=$i
while [[ $i -ge $START ]]
do
    ((j = i + 1))
    echo "cp slide-$i.md slide-$j.md"
    cp slide-$i.md slide-$j.md
    ((i = i - 1))
done
