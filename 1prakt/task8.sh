#!/bin/bash

files=""
archive="./archive.tar"
for file in ./*
do
	if [[ $file == *$1 ]]
	then
		files="$files $file"
	fi
done
tar -cf $archive $files
