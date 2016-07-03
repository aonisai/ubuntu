#!/bin/bash

divisor=3
ran=`expr $RANDOM % $divisor`

case $ran in
	"0" ) echo 0,$ran ;;
	"1" ) echo 1,$ran ;;
	"2" ) echo 2,$ran ;;	
	* ) echo ERROR ;;
esac
