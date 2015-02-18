
apt-get update
apt-get upgrade -y

# This script does not work when ran with evis_root, because
# the following error pops up:
#
# dpkg: error: PATH is not set
#
# However, the PATH is set:
#echo thePATH
#echo $PATH
#
# Running apt-get upgrade manually works fine.

# Hmm, still it might hang because it tries some things as root.
