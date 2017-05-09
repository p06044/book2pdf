#!/bin/sh
mkdir moto
mkdir pdf
bash /Users/sortme/book2pdf/crop.sh
wait $!
mv Scan*.jpg moto
bash /Users/sortme/book2pdf/rot.sh
wait $!
bash /Users/sortme/book2pdf/jpg2pdf.sh
wait $!
mv rc*.pdf pdf
