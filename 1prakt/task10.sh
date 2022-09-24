#!/bin/bash

for file in "$1"/*
do
	if [ ! -s $file ]
	then
		echo $file
	fi
done
