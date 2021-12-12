#!/bin/bash

k=0
for i in {a..g}
do
	for j in {a..z}
	do
		echo x${i}${j}
		k=$((${k}+1))
		echo ${k}
		mv x${i}${j} points_${k}
	done
done

for i in {a..r}
do
	echo xh${i}
	k=$((${k}+1))
	echo ${k}
	mv xh${i} points_${k}
done

