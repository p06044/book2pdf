#!/bin/sh
mkdir moto
mkdir pdf
bash ~/book2pdf/crop.sh
wait $!
mv Scan*.jpg moto
bash ~/book2pdf/rot.sh
wait $!
bash ~/book2pdf/jpg2pdf.sh
wait $!
mv rc*.pdf pdf
cd pdf
open *.pdf
