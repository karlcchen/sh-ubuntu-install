#!/bin/bash
KGHUB=https://github.com/karlcchen
while [ "$1" != "" ] ; 
do 
	git clone ${KGHUB}/${1}
	if [ $? -ne 0 ] ; then 
		printf "\n ERROR: git clone from %s/%s failed!\n" "${KGHUB}" "$1"
		exit 1 		
	fi
       shift 1	
done
