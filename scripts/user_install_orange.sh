git clone https://github.com/hugobuddel/orange3.git
pushd orange3
git remote add upstream https://github.com/biolab/orange3.git
git fetch upstream
#git checkout master
git checkout upstream/master
pip install -r requirements.txt
python3 setup.py develop
#git checkout develop
popd
