#!/bin/sh
j=1
k=0
for i in *.jpg
do
	l=`expr $j % 2`
	if [ $l != $k ]; then
#		convert -rotate 180 ${i} r${i%.jpg}.pdf
		convert ${i} r${i%.jpg}.pdf
	fi
	j=`expr $j + 1`
	echo j= $j
done
