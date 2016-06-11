#!/bin/sh

# argstr:繰り返すコマンドに渡す引数
# $1:繰り返す回数

if [ $# -lt 2 ]; then
	echo "繰り返しの回数とコマンドを入力してください."
	echo "e.g. 3 echo \"hello world\""
	exit 1
fi

count=1
echo $@ #引数確認
for arg in "$@"
do
	if [ $count -gt 2 ]; then
		argstr=$argstr" "$arg
	fi
	count=`expr $count + 1`
done

#指定回数だけ繰り返し
for i in `seq 1 1 $1`
do
	$2 $argstr
done
