#!/bin/bash
lim=`cat nombres.txt|wc -l`
for i in `seq 1 $lim`
do
    nombre=`cat nombres.txt|head -n$i|tail -n1`
    mkdir $nombre
    for j in `seq 1 $1`
    do
        mkdir $nombre/personal$j
    done
    
done