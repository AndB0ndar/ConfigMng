#!/bin/bash
str=$(cat $1 | head -n 1 | cut -b 1,2)
if echo $str | grep -q -e '//' -e '#?' -e '/*'; then
	echo "true"
else
	echo "false"
fi
