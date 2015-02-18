
env PATH=$PATH apt-get update
env PATH=$PATH apt-get upgrade -y

# Running apt-get upgrade (manually) usually works fine.
#
# Sometimes it still seems to hang and needs to be killed from the
# host.
