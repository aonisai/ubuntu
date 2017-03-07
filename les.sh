#!/bin/sh

if [ $# -eq 0 ]; then
	ls --color=auto
else
	file "$1" | grep -o directory > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		ls --color=auto "$1"
	else
		less "$1"
	fi
fi
