#!/bin/sh
for i in *.jpg
do
	convert -rotate -90 ${i} r${i%.jpg}.pdf
done
