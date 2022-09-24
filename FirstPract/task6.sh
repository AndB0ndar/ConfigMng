#!/bin/bash
str=$(cat $1 | head -n 1)
if echo $str | grep -qE '(//|#|/\*)'; then
	echo "true"
else
	echo "false"
fi

