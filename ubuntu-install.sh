#!/bin/bash
#
# ubuntu-install.sh
#
if [ "$1" != "" ] ; then 
    echo -e "\n INFO: use 'apt install' options: $1\n"
    export APT_OPT="$1"
fi 
#

sudo apt update
sudo apt upgrade

export CNT_FILE="./.cnt-installed"
echo "0" >${CNT_FILE}
./apt-install.sh net-tools build-essential git flex bison libpcap-dev libnet1-dev openssh-server | tee install.log1
./apt-install.sh nmap vim screen tmux gedit gawk wget git-core diffstat unzip texinfo gcc-multilib chrpath socat libsdl1.2-dev xterm mount nfs-kernel-server resolvconf | tee install.log2
./apt-install.sh repo xfce4 xfce4-goodies tightvncserver texi2html bmap-tools curl libssl-dev iperf3 traceroute | tee install.log3
./apt-install.sh libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 debootstrap libncurses5-dev uuid-dev libtool autopoint gettext automake autoconf | tee install.log4
./apt-install.sh doxygen asciidoctor mscgen valgrind libpthread-stubs0-dev libpcap0.8-dev libido-0.1-dev libsndio6.1 libsys-hostname-long-perl | tee install.log5
./apt-install.sh libwine libx86-1 pm-utils powerwake schroot schroot-common uck ubuntu-gnome-desktop vbetool vnc4server xvnc4viewer xclip rpm nano | tee install.log6
# for 'bootiso' script, install wimtools
# bootiso write iso to usb stick as bootable disk 
./apt-install.sh wimtools xinetd tftpd tftp gitk gparted dos2unix pv btrfs-progs stressapptest htop snapd cmake p7zip-full p7zip-rar | tee install.log7
./apt-install.sh bmon make libconfuse-dev libnl-3-dev libnl-route-3-dev libncurses-dev pkg-config dh-autoreconf | tee install.log8
# for testing ntp
./apt-install.sh ntp ntpdate ntpsec-ntpdate p7zip lua5.3 | tee install.log9
# for compiling uboot image 
# for trusted uboot images: libmbedtls-dev libconfig-dev 
./apt-install.sh snap htop u-boot-tools libmbedtls-dev libconfig-dev | tee install.log10

# for java run time 
./apt-install.sh default-jre expect sshpass tlp | tee install.log11

./apt-install.sh python  python-setuptools              python-dev  python-virtualenv  python-numpy  python-matplotlib  python-bs4  python-pycurl  | tee install.log12
./apt-install.sh python3 python3-setuptools python3-pip python3-dev python3-virtualenv python3-numpy python3-matplotlib python3-bs4 python3-pycurl | tee install.log13

# for ubunt 20.04, python2 "pip" not available by default 
sudo apt install python-pip
if [ $? -ne 0 ] ; then 
    sudo add-apt-repository universe
    curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
    sudo python2 get-pip.py
fi 

# upgrade python install tools
pip  install --upgrade setuptools.
pip3 install --upgrade setuptools.

pip  install numpy
pip3 install numpy

pip  install elftools
pip3 install elftools

pip  install pyelftools
pip3 install pyelftools

pip  install pycrypto
pip3 install pycrypto

# for GadgEon 
pip2 install toml
pip3 install toml

pip  install pythondialog
pip3 install pythondialog

#
N_INSTALLED=`cat ${CNT_FILE}`
echo -e "\n INFO: ${N_INSTALLED} packages checked or installed\n" 
