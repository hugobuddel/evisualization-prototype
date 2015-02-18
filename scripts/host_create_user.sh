
# Create the home directory if it doesn't exist yet.
mkdir -p lxc_evis/home/evis

# Set the userid of the evis user to the userid of the host.
# This is necessary because the files have this userid.
PASSWD_EVIS_OLD=$(grep "evis:x:" lxc_evis/etc/passwd)
PASSWD_EVIS_NEW="evis:x:$(id -u):$(id -g):evis:/home/evis:/bin/bash"
#echo PEO $PASSWD_EVIS_OLD
#echo PEN $PASSWD_EVIS_NEW
if [ -n "$PASSWD_EVIS_OLD" ] ; then
    sed -i "s|$PASSWD_EVIS_OLD|$PASSWD_EVIS_NEW|" lxc_evis/etc/passwd
else 
    echo $PASSWD_EVIS_NEW >> lxc_evis/etc/passwd
fi

# Necessary to start everything in a screen. Bit unclear.
# http://stackoverflow.com/questions/415403/whats-the-difference-between-bashrc-bash-profile-and-environment
echo "[[ -r ~/.bashrc ]] && . ~/.bashrc" > lxc_evis/home/evis/.profile

