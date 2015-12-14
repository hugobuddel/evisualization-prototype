git clone https://github.com/hugobuddel/orange3.git
#git clone git@github.com:hugobuddel/orange3.git
pushd orange3
#git remote add upstream https://github.com/biolab/orange3.git
#git fetch upstream
# installing the requirements through pip should work, but they should
# already be installed using conda in user_orange_dependencies.sh
#pip install -r requirements.txt
python3 setup.py develop
popd

# Create the large test dataset for the LazyFile widget.
pushd orange3/Orange/datasets
python ../data/fixed_from_tab.py glasslarge
popd
