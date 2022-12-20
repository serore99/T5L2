#!/bin/bash
lim=`cat precipitaciones.txt|wc -l`
tempT=0
for i in `seq 1 $lim`
do
    temp=`cat precipitaciones.txt|head -n$i|tail -n1|awk '{print($2)}'`
    tempT=$((tempT+temp))
done
media=$((tempT/lim))
echo "La temperatura media es $media"