# Installation of the eVisualization prototype software

The eVisualization Prototype software is relatively complex to install because its two main components, Astro-WISE and Orange, have mutually conflicting dependencies. The instructions here allow installation on either a Virtual Machine or a Linux Container.

Therefore, the steps are as follows:

1. Setup your system by either
  - Creating a Virtual Machine
  - Creating a Linux Container
2. Install Dependencies
3. Installing all the software
  1. Install Astro-WISE
  2. Install Orange3

# Setup Machine

Both the Virtual Machine and the Linux Container instructions use Ubuntu 14.04.

## Setup Virtual Machine

These instructions assume VirtualBox. However, they should work for a 'real' machine or other virtual machines as well.

Create a machine with
- at least 10 GB space,
- username 'evis' (`/home/evis` is still occasionally hardcoded)
- for VirtualBox, turn on 3D accelaration (Display -> Video -> Enable 3D Acceleration),
- for VirtualBox, if desired, turn on a 'Host-only' network adapter to SSH to the machine

### Upgrade

Upgrade and install git (and ssh if desired):
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git ssh
```

### Download the prototype scripts.

Optionally install your own github credentials. Retrieve the evisualization prototype repository.
```
git clone https://github.com/hugobuddel/evisualization-prototype.git
#git clone git@github.com:hugobuddel/evisualization-prototype.git
ln -s evisualization-prototype/scripts scripts
```


### Install dependencies through apt-get

Run the following commands as root through sudo.

Update the repositories and upgrade the existing packages.
```
sudo /home/evis/scripts/root_aptget_upgrade.sh
```

Install the necessary dependencies.
```
sudo /home/evis/scripts/root_aptget_dependencies.sh
```

## Setup Linux Container

### Create the container

Clone this repository.
```
git clone https://github.com/hugobuddel/evisualization-prototype.git
```

Get proot. Proot is used to 'run' the container.
```
evisualization-prototype/scripts/get_proot.sh 
```

Get the base linux container. Ubuntu 14.04 is used. `tar` might throw some errors when unpacking the container. These errors are harmless and expected because it unpacks a root filesystem. (Linux containers are often used without unpacking them.)
```
evisualization-prototype/scripts/get_container.sh
```

Create a user in the container. This is necessary to ensure the userid matches the files. This does not (yet) create a group, which will cause a warning when entering the container.
```
evisualization-prototype/scripts/host_create_user.sh
```

Copy these scripts to the container.
```
evisualization-prototype/scripts/copy_scripts.sh
```

Tell the shell where the container can be found and make shell functions.
```
source evisualization-prototype/scripts/lxc_settings.sh
```

A shell in the container can be started from the host with either
```
evis_user
```
or
```
evis_root
```
depending on whether root is required. Quit the shell in the usual methods, e.g. with exit.

### Install dependencies through apt-get

Remove unnecessary dependencies that cause difficulties when running the software as a container. Run as root (through `evis_root` at the host):
```
/home/evis/scripts/root_aptget_remove.sh
```

Update the repositories and upgrade the existing packages. Running apt-get upgrade might hang. Kill/suspend the process if that happens.
```
/home/evis/scripts/root_aptget_upgrade.sh
```

Install the necessary dependencies.
```
/home/evis/scripts/root_aptget_dependencies.sh
```

# Install Software

Run the rest of the commands as the normal 'evis' user (that is, through `evis_user` from the host for an LXC).

## Install Astro-WISE

Install the Astro-WISE Environment. This might take a while, up to half an hour.
```
/home/evis/scripts/user_install_awe.sh
```
Paths are placed in your .bashrc, so source it or start a new session.
```
source ~/.bashrc
```

## Install Orange 3.

Install Orange 3.
```
/home/evis/scripts/user_install_anaconda.sh
source ~/.bashrc
/home/evis/scripts/user_orange_dependencies.sh
/home/evis/scripts/user_install_orange.sh
```

## Install optional software

Some software is only necessary for advanced or experimental functionality of the prototype.

A local version of java is installed because of compatibility with the Linux Container.
```
/home/evis/scripts/user_install_java.sh
```

Firefox cannot be apt-getted for a Linux Container. Install firefox by hand if it fails.
```
/home/evis/scripts/user_install_firefox.sh 
```

Install specific photometric redshift code for Astro-WISE.
```
/home/evis/scripts/user_awe_bpz.sh
```
