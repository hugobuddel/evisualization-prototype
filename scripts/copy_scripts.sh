
#http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#mkdir lxc_evis/home/evis
#cp -avi $DIR lxc_evis/home/evis
cp -av $DIR lxc_evis/home/evis

# assume folder is 'scripts'
pushd lxc_evis/home/evis
ln -s scripts/dot_screenrc .screenrc
popd

