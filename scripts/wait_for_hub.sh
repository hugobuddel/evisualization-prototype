# Wait for the SAMP hub to become online.
# Used in scripts that start awe or Orange with SAMP.
while [ ! -e /home/evis/.samp ] ; do
    echo "Waiting for SAMP HUB to become online."
    sleep 1
done
