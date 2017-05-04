#!/bin/sh
#1.SSを撮る(shift+command+3, fn+↓)
#2.SSを連番にrenameする
#3.デスクトップに画像ファイルがSSしかない状態にする
#4.シェルでcd Desktop
#5.このスクリプトを回す
j=1
for i in *.jpg
do
	convert -crop 1350x840+0+0 ${i} c${j}.jpg
	j=`expr $j + 1`
	convert -crop 1350x1680+0+840 ${i} c${j}.jpg
	j=`expr $j + 1`
done
