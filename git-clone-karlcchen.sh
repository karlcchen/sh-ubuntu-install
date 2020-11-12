#!/bin/bash
#KGHUB=https://github.com/karlcchen
KGHUB=ssh://git@github.com/karlcchen
LOOP=0
while [ "$1" != "" ] ; 
do 
    LOOP=$((LOOP+1))    
    if [ -d "$1" ] ; then 
        printf '\nWARNING-1: loop=%d, path \"%s\" already exist!\n' ${LOOP} "$1"
    else 
        GIT_URL="${KGHUB}/${1}"
        printf "\n git clone from: %s\n" "$GIT_URL"
        git clone ${GIT_URL}
	if [ $? -ne 0 ] ; then 
	    printf "\n ERROR: git clone from %s/%s failed!\n" "${KGHUB}" "$1"
	    exit 1 		
	fi
   fi
   shift 1	
done
