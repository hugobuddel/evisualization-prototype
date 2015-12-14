# Update awe
pushd /home/evis/awehome/current/common
cvs -q update -dPA
popd

pushd /home/evis/awehome/current/astro
cvs -q update -dPA
popd

# Update Orange
pushd /home/evis/orange3
#git checkout develop
#git pull origin develop
git checkout master
git pull origin master
popd
