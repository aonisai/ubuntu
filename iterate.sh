#!/bin/sh

if [ $# -lt 2 ]; then #less than
	echo "繰り返しの回数とコマンドを入力してください."
	echo "e.g. 3 echo \"hello world\""
	exit 1
fi

count=1
echo $#,$@
for arg in "$@" #引数をargに代入
do
	if [ $count -gt 2 ]; then #greater than
		argstr=$argstr" "$arg #argstrに繰り返すコマンドの引数を代入
		echo $count, $argstr
	fi
	count=`expr $count + 1`
done

for i in `seq 1 1 $1`
do
	echo $2
	$2 $argstr
done
