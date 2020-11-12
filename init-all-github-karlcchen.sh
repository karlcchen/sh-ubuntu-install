#!/bin/bash
#
CUR_DIR=`pwd`
cd

${CUR_DIR}/sh-ubuntu-install.saved/git-clone-karlcchen.sh sh-ubuntu-install
if [ $? -ne 0 ] ; then 
    printf '\nERROR-1: %s failed!\n' "${CUR_DIR}/sh-ubuntu-install.saved/git-clone-karlcchen.sh sh-ubuntu-install"
    exit 1 
fi 

${CUR_DIR}/git-clone-karlcchen.sh sh-system-adm sh-glp2 sh-uboot sh-soniccorex sh-bitbake sh-lpower etc bin kchen test-uboot-cmd 

cd
mkdir gg 
cd gg
git clone git@sonicgit.eng.sonicwall.com:kchen/gg.git

