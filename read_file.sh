#!/bin/bash

DATA=`cat $1`

declare -A list

while read line
do
	if [ `echo $line | grep "ip"` ]; then
		list["ip"]=${line#*:}
	elif [ `echo $line | grep "user"` ];  then  
		list["user"]=${line#*:}
	elif [ `echo $line | grep "pw"` ]; then  
		list["pw"]=${line#*:}
	elif [ `echo $line | grep "dst"` ]; then  
		list["dsr"]=${line#*:}
	elif [ `echo $line | grep "src"` ]; then  
		list["src"]=${line#*:}
	fi
done << FILE
$DATA
FILE

echo ${list[@]}
