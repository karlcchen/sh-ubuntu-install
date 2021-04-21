# ubuntu-install

# requirements
# - copy dest ".ssh" and its sub-dirs
# - install: openssh-server 
# - install sonicwall linux vpn 
# - run "startctui", do "eidt config: with your name "kchen" and server name "connect2.sonicwall.com" 
# after successful installation and login to vpn, make sure you can "ping sonicgit"  




# step 1, for example, remote machine ipaddr is 10.180.200.176
src:> scp git-clone-karlcchen.sh username@10.180.200.176

# step 2, from dest machine
dest:> ~/git-clone-karlcchen.sh sh-ubuntu-install

# step 3, 
dest:> cd ~/sh-ubuntu-install
dest:> ./cp-init-scripts-to-user-home-dir.sh

# step 4
dest:> cd
dest:> ./rm-all-git-dirs.sh

# step 5
dest:> ./init-all-github-karlcchen.sh

# step 6, test it is got all dirs and it's working 
dest:> cd ~/sh-system-adm/
dest:> ./sync-all-github-karlcchen.sh

# step 7, remove the scripts in user home dir
dest:> cd ~/sh-ubuntu-install
dest:> ./rm-init-scripts-in-user-home-dir.sh
