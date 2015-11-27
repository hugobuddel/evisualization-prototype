#env PATH=$PATH apt-get install cvs libbz2-dev libreadline6-dev zlib1g-dev \
#  libfreetype6-dev libpng12-dev libaio-dev libaio1 python-fftw \
#  libssl-dev libfftw3-dev python3-openssl python-openssl \
#  python-pysqlite2 python-sqlite libsqlite3-dev python-tk python3-tk \
#  git python-virtualenv python3-numpy python3-scipy python3-pyqt4 \
#  python-qt4-dev python3-sip-dev libqt4-dev python3-psycopg2 \
#  python3-scipy python3-numpy python3-nose python3-mock \
#  python3-jinja2 python3-sphinx python3-sqlparse libcfitsio3 \
#  liberfa1 libwcs4 python-virtualenv virtualenvwrapper python3-pip \
#  python-pip cython3 cython libxtst6 ssh-askpass sgt-puzzles \
#  python-gtk2 xdot libatk-bridge2.0-0 libatk-bridge2.0-dev \
#  libatk-adaptor libasound2 libdbus-glib-1-2 debtree -y

# Cannot remove Python3 on an Ubuntu 14.04.03 VM.
#env PATH=$PATH apt-get remove python3 -y

env PATH=$PATH apt-get install cvs libbz2-dev libreadline6-dev zlib1g-dev \
  vim \
  gitk pylint \
  libfreetype6-dev libpng12-dev libaio-dev libaio1 python-fftw \
  libssl-dev python-openssl \
  python-pysqlite2 python-sqlite libsqlite3-dev python-tk \
  git python-virtualenv \
  python-qt4-dev libqt4-dev \
  libcfitsio3 \
  liberfa1 libwcs4 python-virtualenv virtualenvwrapper \
  python-pip cython libxtst6 ssh-askpass sgt-puzzles \
  python-gtk2 xdot libatk-bridge2.0-0 libatk-bridge2.0-dev \
  libatk-adaptor libasound2 libdbus-glib-1-2 debtree -y

# imagemagick
