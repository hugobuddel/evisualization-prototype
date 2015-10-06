# Installation of the eVisualization prototype software

The eVisualization Prototype software is relatively complex to install because its two main components, Astro-WISE and Orange, have mutually conflicting dependencies. The instructions here allow installation on either a Virtual Machine or a Linux Container.

Therefore, the steps are as follows:

1. Setup your system by either
  - Creating a Virtual Machine
  - Creating a Linux Container
2. Installing all the software
  1. Install Dependencies
  2. Install Astro-WISE
  3. Install Orange3
  4. Install auxiliary programs

# Setup Machine

Both the Virtual Machine and the Linux Container instructions use Ubuntu 14.04.

## Setup Virtual Machine

These instructions assume VirtualBox. However, they should work for a 'real' machine or other virtual machines as well.

Create a machine with
- at least 10 GB space,
- username 'evis' (@/home/evis@ is still occasionally hardcoded)
- for VirtualBox, turn on 3D accelaration (Display -> Video -> Enable 3D Acceleration),
- for VirtualBox, if desired, turn on a 'Host-only' network adapter to SSH to the machine

Upgrade and install git (and ssh if desired):
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git ssh
```

Optionally install your own github credentials. Retrieve the evisualization prototype repository.
```
git clone https://github.com/hugobuddel/evisualization-prototype.git
#git clone git@github.com:hugobuddel/evisualization-prototype.git
ln -s evisualization-prototype/scripts scripts
```

Run 'user' commands below as the local @evis@ user, run 'root' commands through @sudo@.

## Setup Linux Container

### Create the container

Clone this repository.
```
git clone https://github.com/hugobuddel/evisualization-prototype.git
```
or
```
git clone git@github.com:hugobuddel/evisualization-prototype.git
```
and enter the checkout
```
cd evisualization-prototype
```

Get proot. Proot is used to 'run' the container.
```
scripts/get_proot.sh 
```

Get the base linux container. Ubuntu 14.04 is used. @tar@ might throw some errors when unpacking the container. These errors are harmless and expected because it unpacks a root filesystem. (Linux containers are often used without unpacking them.)
```
scripts/get_container.sh
```

Create a user in the container. This is necessary to ensure the userid matches the files. This does not (yet) create a group, which will cause a warning when entering the container.
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

A shell in the container can be started from the host with either
```
evis_user
```
or
```
evis_root
```
depending on whether root is required. Quit the shell in the usual methods, e.g. with exit.

Remove unnecessary dependencies that cause difficulties when running the software as a container. Run as root (through @evis_root@ at the host):
```
/home/evis/scripts/root_aptget_remove.sh
```


# Install Software

## Install dependencies through apt-get

Run the following commands as root (through @evis_root@ from the host for an LXC, or through @sudo@ from the guest for a VM).

Update the repositories and upgrade the existing packages. Running apt-get upgrade might hang. Kill/suspend the process if that happens.
```
/home/evis/scripts/root_aptget_update.sh
/home/evis/scripts/root_aptget_upgrade.sh
```

Install the necessary dependencies.
```
/home/evis/scripts/root_aptget_dependencies.sh
```

## Install software

Run the rest of the commands as a normal user (that is, through @evis_user@ from the host for an LXC).

Install the Astro-WISE Environment. This might take a while, up to half an hour.
```
/home/evis/scripts/user_install_awe.sh
/home/evis/scripts/user_awe_bpz.sh
```

Install Orange 3.
```
/home/evis/scripts/user_install_anaconda.sh
/home/evis/scripts/user_orange_dependencies.sh
/home/evis/scripts/user_install_orange.sh
```

Install other applications. Install firefox by hand if it fails.
```
/home/evis/scripts/user_install_java.sh
/home/evis/scripts/user_install_firefox.sh 
```
