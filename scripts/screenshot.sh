#!/bin/bash

SaveLoc=${HOME}/Screenshots

if [ $# -ne 0 ];then
	if [ $# -le 1 ];then 
		echo Need second to delay as an argument for option -N or -n
		exit
	fi 
	if [ "$1" = "-n" ];then
		urxvt -e scrot -d $2 -c -m "${SaveLoc}/`date +'%y%m%d-%H%M%S'`.jpg"
	fi
else 
	scrot -m "${SaveLoc}/`date +'%y%m%d-%H%M%S'`.jpg"
fi


