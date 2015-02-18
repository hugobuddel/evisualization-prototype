
apt-get update

# This script does not always work when ran with evis_root, because
# the following error pops up:
#
# dpkg: error: PATH is not set
#
# However, the PATH is set:
#echo thePATH
#echo $PATH

# Running apt-get upgrade manually usually works fine.
#
# Sometimes it still seems to hang and needs to be killed from the#
# host.
