# Installation of the eVisualization prototype software

### Create the container

Clone this repository.
```
git clone git@github.com:hugobuddel/evisualization-prototype.git
```

TODO: cd into the directory

Get proot. Proot is used to 'run' the container.
```
scripts/get_proot.sh 
```

Get the base linux container. Ubuntu 14.04 is used.
```
scripts/get_container.sh
```

Create a user in the container. This is necessary to ensure the userid matches the files.
```
scripts/host_create_user.sh
```

Copy these scripts to the container.
```
scripts/copy_scripts.sh
```

Tell the shell where the container can be found and make shell functions.
```
source scripts/lxc_settings.sh
```

A shell in the container can now be created with
```
evis_user
```
or
```
evis_root
```
Quit the shell in the usual methods, e.g. with exit.

### Install dependencies through apt-get

First remove unnecessary dependencies.
```
evis_root /home/evis/scripts/root_aptget_remove.sh
```

Update the repositories and upgrade the existing packages.
```
evis_root /home/evis/scripts/root_aptget_update.sh
evis_root /home/evis/scripts/root_aptget_upgrade.sh
```

Install the necessary dependencies.
```
evis_root /home/evis/scripts/root_aptget_dependencies.sh
```

### Install software

```
evis_user
/home/evis/scripts/user_install_awe.sh
/home/evis/scripts/user_awe_bpz.sh
/home/evis/scripts/user_orange_virtualenv.sh
/home/evis/scripts/user_orange_dependencies.sh
/home/evis/scripts/user_orange_astropy.sh
/home/evis/scripts/user_install_orange.sh
/home/evis/scripts/user_install_java.sh
/home/evis/scripts/user_install_firefox.sh 
```
