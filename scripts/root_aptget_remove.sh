# Remove things that are not necessary but cause problems
# with proot.
env PATH=$PATH apt-get remove upstart samba-common samba-libs postfix logrotate -y
