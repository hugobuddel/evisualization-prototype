export DIR_EVIS=./
export DIR_LXC_EVIS=$DIR_EVIS/lxc_evis

#alias demolxc="env -i DISPLAY=$DISPLAY HOME=/home/evis $DIR_EVIS/proot-x86_64 -w /home/evis -b /proc -b /dev/fuse -b /dev/urandom -b /dev/random -b /etc/resolv.conf -r $DIR_LXC_EVIS /bin/bash "

function evis_user() {
    COMMAND=${1-"/bin/bash"}
    # Environment
    # env -i to unset paths etc
    # DISPLAY to have/tunnel X
    # HOME because it isn't automatically set from passwd
    # TERM for screen
    
    # Bindings/mounts
    # .Xauthority necessary for X forwarding
    # /etc/hosts necessary for hostname, necessary for Oracle
    # /etc/resolv.conf for network
    # /dev for tty for screen (can we do without full /dev?)
    # proc fuse [u]random ?
    
    #env -i TERM=xterm DISPLAY=$DISPLAY HOME=/home/evis $DIR_EVIS/proot-x86_64 -w /home/evis -b ~/.Xauthority:/home/evis/.Xauthority -b /etc/hosts -b /proc -b /dev/fuse -b /dev/urandom -b /dev/random -b /etc/resolv.conf -b /dev -r $DIR_LXC_EVIS $COMMAND
    # Why is "/bin/bash -c" necessary?
    #env -i TERM=xterm DISPLAY=$DISPLAY HOME=/home/evis $DIR_EVIS/proot-x86_64 -w /home/evis -b ~/.Xauthority:/home/evis/.Xauthority -b /etc/hosts -b /proc -b /dev/fuse -b /dev/urandom -b /dev/random -b /etc/resolv.conf -b /dev -r $DIR_LXC_EVIS /bin/bash -c $COMMAND
    # -l necessary to get screen working, when .profile is in place
    env -i TERM=xterm DISPLAY=$DISPLAY HOME=/home/evis $DIR_EVIS/proot-x86_64 -w /home/evis -b ~/.Xauthority:/home/evis/.Xauthority -b /etc/hosts -b /proc -b /dev/fuse -b /dev/urandom -b /dev/random -b /etc/resolv.conf -b /dev -r $DIR_LXC_EVIS /bin/bash -l -c $COMMAND
}

function evis_root() {
    COMMAND=${1-"/bin/bash"}
    env -i TERM=xterm DISPLAY=$DISPLAY HOME=/home/evis $DIR_EVIS/proot-x86_64 -w /home/evis -b ~/.Xauthority:/home/evis/.Xauthority -b /etc/hosts -b /proc -b /dev/fuse -b /dev/urandom -b /dev/random -b /etc/resolv.conf -b /dev -r $DIR_LXC_EVIS -0 /bin/bash -l -c $COMMAND
}

export -f evis_user
export -f evis_root
