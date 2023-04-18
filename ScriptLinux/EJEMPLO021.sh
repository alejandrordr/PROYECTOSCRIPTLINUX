#!/usr/bin/env bash
miarchivo="walter.txt"
IFS=$`;'
for var in $(cat $miarchivo);do
	echo " $var"
done