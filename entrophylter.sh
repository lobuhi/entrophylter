#!/bin/bash

if [ $# -lt 1 ];then
	echo "Usage: crunch [min] [max] [characters] | ./entrophylter.sh [OPTION] [ENTROPY]"
	echo "All parameters are mandatory"
	echo "OPTIONS:"
	echo "	-l Match for lower or equal entropy"
	echo " 	-g Match for greater or equal entropy"
	exit
fi

while read line; do 
	ENTROPY=$(python2 entropy.py $line)
	if [[ $1 == '-g' ]];then
		if [[ $(echo "$ENTROPY >= $2" | bc -l) -eq 1 ]];then
			echo $line
		fi
	elif [[ $1 == '-l' ]];then
		if [[ $(echo "$ENTROPY <= $2" | bc -l) -eq 1 ]];then
			echo $line 	
		fi
	else
		echo "Option -g or -l needed"
	fi
done 
