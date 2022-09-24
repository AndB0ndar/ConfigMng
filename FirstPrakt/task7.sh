#!/bin/bash

for sfile in $(find $1 -type f)
do
	for dfile in $(find $1 -type f)
	do
		if [[ "$sfile" != "$dfile" ]]; then
			text1=$(tr -d '\0' <"$sfile" | sort | uniq)
			text2=$(tr -d '\0' <"$dfile" | sort | uniq)
			if [[ "$text1" == "$text2" ]]; then
				echo "$sfile"=="$dfile"
			fi
		fi
	done
done
