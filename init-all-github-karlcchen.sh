#!/bin/bash
#
# init-all-github-karlcchen.sh
#
# running from "sh-ubuntu-install.saved"
#
CUR_DIR=`pwd`
cd
${CUR_DIR}/git-clone-karlcchen.sh sh-ubuntu-install
if [ $? -ne 0 ] ; then 
    printf '\nERROR-1: %s failed!\n' "${CUR_DIR}/sh-ubuntu-install.saved/git-clone-karlcchen.sh sh-ubuntu-install"
    exit 1 
fi 

cd sh-ubuntu-install
if [ $? -ne 0 ] ; then 
    printf '\nERROR-2: cd %s failed!\n' "sh-ubuntu-install"
    exit 2 
fi 

CUR_DIR=`pwd`
cd
${CUR_DIR}/git-clone-karlcchen.sh sh-system-adm sh-glp2 sh-uboot sh-soniccorex sh-bitbake sh-lpower etc bin kchen test-uboot-cmd 
if [ $? -ne 0 ] ; then 
    printf '\nERROR-3: %s failed!\n' "${CUR_DIR}/git-clone-karlcchen.sh"
    exit 3 
fi 

#
# gg is not from github
#
cd
mkdir gg 
if [ $? -ne 0 ] ; then 
    printf '\nERROR-4: mkdir %s failed!\n' "gg"
    exit 4 
fi 
cd gg
if [ $? -ne 0 ] ; then 
    printf '\nERROR-5: cd %s failed!\n' "gg"
    exit 5 
fi 

git clone git@sonicgit.eng.sonicwall.com:kchen/gg.git
if [ $? -ne 0 ] ; then 
    printf '\nERROR-6: %s failed!\n' "git clone git@sonicgit.eng.sonicwall.com:kchen/gg.git"
    exit 6 
fi 

