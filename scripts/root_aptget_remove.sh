# Remove things that are not necessary but cause problems
# with proot.
env PATH=$PATH apt-get remove upstart postfix logrotate -y
