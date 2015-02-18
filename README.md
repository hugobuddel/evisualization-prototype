# evisualization-prototype
Prototype of the eVisualization project software.

## Installation

### Create the container

Clone this repository.
> git clone git@github.com:hugobuddel/evisualization-prototype.git

Get proot. Proot is used to 'run' the container.
> scripts/get_proot.sh 

Get the base linux container. Ubuntu 14.04 is used.
> scripts/get_container.sh

Create a user in the container. This is necessary to ensure the userid matches the files.
> scripts/host_create_user.sh

Copy these scripts to the container.
> scripts/copy_scripts.sh

Tell the shell where the container can be found and make shell functions.
> source scripts/lxc_settings.sh

A shell in the container can now be created with
> evis_user
or
> evis_root
Quit the shell in the usual methods, e.g. with exit.

### Install dependencies through apt-get

First remove unnecessary dependencies.
> evis_root /home/evis/scripts/root_aptget_remove.sh

Update the repositories and upgrade the existing packages.
> evis_root /home/evis/scripts/root_aptget_update.sh
> evis_root /home/evis/scripts/root_aptget_upgrade.sh

Install the necessary dependencies.
> evis_root /home/evis/scripts/root_aptget_dependencies.sh

### Install software

> evis_user

> /home/evis/scripts/user_install_awe.sh

> /home/evis/scripts/user_awe_bpz.sh

> /home/evis/scripts/user_orange_virtualenv.sh

> /home/evis/scripts/user_orange_dependencies.sh

> /home/evis/scripts/user_orange_astropy.sh

> /home/evis/scripts/user_install_orange.sh

> /home/evis/scripts/user_install_java.sh

> /home/evis/scripts/user_install_firefox.sh 


## Running Prototype

TODO initialization stuff like
* create user

> evis_user

> screen -xR demo

> /home/evis/scripts/start_topcat.sh
> /home/evis/scripts/start_awe_demo.sh
> /home/evis/scripts/start_orange_demo_samp.sh
> /home/evis/scripts/start_simplepuller.sh
> /home/evis/scripts/start_dependencyexplorer.sh

### Test demo



## TODO

Small things
* Get 32-bit proot if necessary.
* Check the symlink in copy_scripts.
* Perhaps improve user creation?
* Handle the lxc_settings better. Perhaps have a default.
* Fix hardcoded paths in install scripts.
* Translate all these instructions to something like salt.
* And/or put all these instructions in a single file.
* Put things better in directories.
* Especially running awe.
* Do awe user properly.
* Fix "Do you want to run" message in java
* Fix "Your java version is out of date"
* Let treeexplorer quit when problem arises
* Fix "groups: cannot find name for group ID 1000" errors


Medium things
* Let treeexplorer not crash because reply = None
* Do not send reply = None to treeexplorer


