#!/bin/bash
#
# rm-all-dirs.sh
#

CUR_DIR=`pwd`
cd
mv sh-ubuntu-install sh-ubuntu-install.saved
if [ $? -ne 0 ] ; then 
    printf '\nERROR-1: %s failed!\n' "mv sh-ubuntu-install sh-ubuntu-install.saved"
    exit 1
fi 

cd sh-ubuntu-install.saved
if [ $? -ne 0 ] ; then 
    printf '\nERROR-2: cd %s failed !\n' "sh-ubuntu-install.saved"
    exit 2
fi 

./rm-git-dirs.sh sh-system-adm sh-glp2 sh-uboot sh-soniccorex sh-bitbake sh-lpower etc bin kchen test-uboot-cmd gg
if [ $? -ne 0 ] ; then 
    printf '\nERROR-3: %s failed !\n' "./rm-git-dirs.sh"
    exit 3
fi 

cd 
./sh-ubuntu-install.saved/git-clone-karlcchen.sh sh-ubuntu-install
if [ $? -ne 0 ] ; then 
    printf '\nERROR-4: %s failed!\n' "./sh-ubuntu-install.saved/git-clone-karlcchen.sh sh-ubuntu-install"
    exit 4
fi 

cd
cd sh-ubuntu-install
if [ $? -ne 0 ] ; then 
    printf '\nERROR-5: cd %s failed!\n' "sh-ubuntu-install"
    exit 5
fi 





