#!/bin/bash
#
APT_OPT="-y"
#
if [ "${CNT_FILE}" = "" ] ; then 
    CNT_FILE="./.cnt-installed"
fi
N_INSTALLED=`cat ${CNT_FILE}`
while [ "$1" != "" ] ; 
do
   echo -e "\n INFO: LOOP:#${N_INSTALLED} installing $1\n"
   sudo apt-get install $1 ${APT_OPT}
   if [ $? -ne 0 ] ; then 
        echo "\nERROR: LOOP:#{N_INSTALLED} installing $1 failed!\n"
        echo "${N_INSTALLED}" >${CNT_FILE} 
        exit 1
   fi
   shift 1
   N_INSTALLED=$((N_INSTALLED+1)) 
done
echo "${N_INSTALLED}" >${CNT_FILE}

