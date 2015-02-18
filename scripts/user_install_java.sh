# We cannot install java from the repository because it pulls in
# all this systemd and dbus stuff like libpam.

wget http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.jnlp

wget -O jre-8u25-linux-x64.tar.gz "http://javadl.sun.com/webapps/download/AutoDL?BundleId=97360"
tar -xvf jre-8u25-linux-x64.tar.gz
