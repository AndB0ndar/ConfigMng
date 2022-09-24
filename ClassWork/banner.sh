#!/bin/sh

echo "+-$(echo "$@" | sed -e 's/./-/g')-+"
echo "| $@ |"
echo "+-$(echo "$@" | sed -e 's/./-/g')-+"
