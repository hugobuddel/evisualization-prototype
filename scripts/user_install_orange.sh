. orange3env/bin/activate

git clone https://github.com/hugobuddel/orange3.git
pushd orange3
git checkout master
python3 setup.py develop
git checkout develop
popd
