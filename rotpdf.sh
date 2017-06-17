#!/bin/sh
j=1
k=1 
for i in *.jpg
do
	l=`expr $j % 2`
	if [ $l == $k ]; then
		echo ${i}
		convert -rotate 180 ${i} r${i%.jpg}.pdf
	else
		convert ${i} r${i%.jpg}.pdf
	fi
	j=`expr $j + 1`
done
