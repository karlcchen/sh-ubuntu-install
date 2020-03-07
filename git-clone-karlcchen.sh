#!/bin/bash
#KGHUB=https://github.com/karlcchen
KGHUB=ssh://git@github.com/karlcchen
while [ "$1" != "" ] ; 
do 
        GIT_URL="${KGHUB}/${1}"
        printf "\n git clone from: %s\n" "$GIT_URL"
	git clone ${GIT_URL}
	if [ $? -ne 0 ] ; then 
		printf "\n ERROR: git clone from %s/%s failed!\n" "${KGHUB}" "$1"
		exit 1 		
	fi
       shift 1	
done
