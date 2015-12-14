conda update conda

conda install numpy scipy astropy sqlparse scikit-learn numpydoc \
    pip beautifulsoup4 openpyxl sphinx setuptools wheel nose \
    jinja2 numpydoc pyqt matplotlib -y

pip install pyqtgraph

pip install "bottlechest>=0.7.0"

pip install "recommonmark>=0.1.1"

conda clean --tarballs --yes
