#!/bin/bash

pub_key=/home/masakazu-o/abe/master/pub_key
priv_key=$2 #ユーザの属性
#priv_key=/home/masakazu-o/abe/kevin/kevin_priv_key #ユーザの属性
dec_file=$1		#output_file
#array	分散ファイルの配列

#input_fileの数値削除とfg追加、秘密分散で復号されABE復号に渡される変数
#gfdec_file=`echo $3 | sed -e 's/[0-9]//g' -e 's/$/gfdec/'`
#上の一文だと/mnt/db にファイルがないのでエラーになる
gfdec_file=/home/masakazu-o/abe/trash/trash.gfdec

#引数の分散ファイルを配列に格納
for i in `seq 3 ${#}`
do
	array+=("$3")
	shift
done
#echo ${array[@]}

# 秘密分散の復号
gfcombine -o $gfdec_file ${array[@]}

# abeの復号
#cpabe-dec -k /home/masakazu-o/abe/master/pub_key  /home/masakazu-o/abe/kevin/kevin_priv_key $ -o $
cpabe-dec -k $pub_key $priv_key $gfdec_file -o $dec_file

rm $gfdec_file
