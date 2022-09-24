#!/bin/sh

mkdir -p /usr/local/bin
cp "$1" /usr/local/bin/
chown root:root "$1"
chmod 0755 /usr/local/bin
