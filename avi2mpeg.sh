#!/bin/bash

echo *******************************
echo Converting files: 
ls -l *.avi
echo *******************************

for v in *.avi; do 
	output=${v%.avi}.mp4
	echo ===============================
	echo "Converting $v -> $output"
	echo ===============================
	ffmpeg -i $v $output
	rm $v
done

