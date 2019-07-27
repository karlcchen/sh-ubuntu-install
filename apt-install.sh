#!/bin/bash
#
#
#APT_OPT="-y"
#
while [ "$1" != "" ] ; 
do
   echo -e "\n INFO: installing $1\n"
   sudo apt install $1 ${APT_OPT}
   if [ $? -ne 0 ] ; then 
        echo "\nERROR: install $1 failed!\n"
        exit 1
   fi
   shift 1 
done

