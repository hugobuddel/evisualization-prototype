# to install Anaconda python3 which has all packages that we need

wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda3-2.2.0-Linux-x86_64.sh

# TODO: Figure out how to accept the default settings.
#   Perhaps just pipe input to the script?
bash Anaconda3-2.2.0-Linux-x86_64.sh

# TODO: Ensure this PATH is also set during installation.
export PATH=/home/evis/anaconda3/bin:${PATH}
echo "export PATH=/home/evis/anaconda3/bin:\${PATH}" >> ~/.bashrc
