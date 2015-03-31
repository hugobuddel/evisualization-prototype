# Get a preinstalled version of the eVisualization prototype.

# Get proot, needs to be available outside of the container.
scripts/get_proot.sh 

# Get the container.
scripts/get_container_preinstalled.sh

# Create a user in the container. This is necessary to ensure the userid matches the files.
scripts/host_create_user.sh

# Copy these scripts to the container.
scripts/copy_scripts.sh

# Tell the shell where the container can be found and make shell functions.
source scripts/lxc_settings.sh

# Update the prototype code.
evis_user /home/evis/scripts/user_update_aweorange.sh

# Copy the awe user if necessary.
scripts/host_copy_awe_user.sh

# Update the system packages.
evis_root /home/evis/scripts/root_aptget_update.sh
evis_root /home/evis/scripts/root_aptget_upgrade.sh

