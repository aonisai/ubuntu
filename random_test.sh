#!/bin/bash

ran=`expr $RANDOM % 3`
ran=5
case $ran in
	"0" ) echo 0,$ran ;;
	"1" ) echo 1,$ran ;;
	"2" ) echo 2,$ran ;;	
	* ) echo ERROR ;;
esac
