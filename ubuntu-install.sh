#!/bin/bash
#
./apt-install.sh net-tools build-essential git python-dev python-pip python-virtualenv python-numpy python-matplotlib flex bison libpcap-dev libnet1-dev openssh-server | tee install.log1
./apt-install.sh nmap vim screen tmux gedit gawk wget git-core diffstat unzip texinfo gcc-multilib chrpath socat libsdl1.2-dev xterm mount nfs-kernel-server resolvconf | tee install.log2
./apt-install.sh repo xfce4 xfce4-goodies tightvncserver texi2html bmap-tools python-bs4 python-pycurl libssl-dev | tee install.log3
./apt-install.sh libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 debootstrap libncurses5-dev uuid-dev libtool autopoint gettext automake autoconf | tee install.log4
./apt-install.sh doxygen asciidoctor mscgen valgrind libpthread-stubs0-dev libpcap0.8-dev libido-0.1-dev python3-dev libsndio6.1 libsys-hostname-long-perl | tee install.log5
./apt-install.sh libwine libx86-1 pm-utils powerwake python3-pip python3-setuptools schroot schroot-common uck ubuntu-gnome-desktop vbetool vnc4server xvnc4viewer xclip | tee install.log6
