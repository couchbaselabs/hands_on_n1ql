#!/bin/bash

# START is the number of the new slide
# END is the number of the last slide.

# Given 47 slides, to insert a slide at 41, run:
# 	./insert_slide.sh 41 47
# This will copy slide-47.md to slide-48.md, slide-46.md to slide-47.md, etc 
# stopping at 41

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
