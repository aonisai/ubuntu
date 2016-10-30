#!/bin/bash

# time:数値の抽出結果を代入

#数値と,以外を削除
time=`cat $1 | sed -e 's/[^0-9.]//g'`

sum=0
#count=0
#timeに格納された値の合計を計算
for i in $time
do
    sum=`echo $sum + $i | bc`
    #echo $sum
	count=$((count + 1))
	#$[count++]
	#echo $count
done

ave=`echo "scale=3; $sum / $count" | bc`
#echo $count,$sum,$ave  #合計と平均
echo $ave  #平均
