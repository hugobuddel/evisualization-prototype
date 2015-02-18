wget http://download.openvz.org/template/precreated/ubuntu-14.04-x86_64.tar.gz

mkdir ubuntu-14.04-x86_64
tar -xv -C ubuntu-14.04-x86_64 -f ubuntu-14.04-x86_64.tar.gz

ln -s ubuntu-14.04-x86_64 lxc_evis
