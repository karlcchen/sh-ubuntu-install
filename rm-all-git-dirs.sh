#!/bin/bash
#
#
CUR_DIR=`pwd`
cd
mv sh-ubuntu-install sh-ubuntu-install.saved
if [ $? -ne 0 ] ; then 
    printf '\nERROR-1: %s failed !\n' "mv sh-ubuntu-install sh-ubuntu-install.saved"
    exit 1
fi 
${CUR_DIR}/rm-git-dirs.sh sh-system-adm sh-glp2 sh-uboot sh-soniccorex sh-bitbake sh-lpower etc bin kchen test-uboot-cmd gg
if [ $? -ne 0 ] ; then 
    printf '\nERROR-2: %s failed !\n' "${CUR_DIR}/rm-git-dirs.sh"
    exit 2
fi 

