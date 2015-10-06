# pyqtgraph
pip install pyqtgraph

conda install sqlparse -y
conda update scikit-learn -y
conda install numpydoc -y

#  Bottlechest
git clone https://github.com/biolab/bottlechest.git
pushd bottlechest
make pyx cfiles
python3 setup.py install
popd


# qt-graph-helpers
git clone https://github.com/biolab/qt-graph-helpers.git
pushd qt-graph-helpers
python3 setup.py build
python3 setup.py install
popd

