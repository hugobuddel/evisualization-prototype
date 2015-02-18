# We cannot install firefox from the repository because it pulls in
# all this systemd and dbus stuff like libpam.

wget http://mozilla.mirrors.tds.net/pub/mozilla.org/firefox/releases/31.0/linux-x86_64/en-US/firefox-31.0.tar.bz2
tar -xvf firefox-31.0.tar.bz2

echo "export PATH=/home/evis/firefox:\${PATH}" >> ~/.bashrc

