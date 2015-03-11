# Get the latest preinstalled container.
wget http://www.astro.rug.nl/~buddel/evisualization/bulk/lxc/lxc_evis.ubuntu-14.04-x86_64.installed.latest.tgz

# Check the directory. Like lxc_evis.ubuntu-14.04-x86_64.installed.20150210
export DIR_LXC_PREINSTALLED=$(tar -t -f lxc_evis.ubuntu-14.04-x86_64.installed.latest.tgz  | head -n 1)

# Untar the container.
tar -xv -f lxc_evis.ubuntu-14.04-x86_64.installed.latest.tgz

# Create symlink to the container.
ln -s $DIR_LXC_PREINSTALLED lxc_evis
