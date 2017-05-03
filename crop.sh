#!/bin/sh
#1.SSを撮る(shift+command+3, fn+↓)
#2.SSを連番にrenameする
#3.デスクトップに画像ファイルがSSしかない状態にする
#4.シェルでcd Desktop
#5.このスクリプトを回す
for i in *.jpg
do
	convert -crop 1360x2000+0+0 ${i} c${i}
done
