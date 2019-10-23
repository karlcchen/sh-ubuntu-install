#!/bin/bash
while [ "$1" != "" ] ; 
do 
	rm -rf ~/${1}
	if [ $? -ne 0 ] ; then 
		printf "\n ERROR: rm -rf %s failed!\n" "$1"
		exit 1 		
	fi
       shift 1	
done
