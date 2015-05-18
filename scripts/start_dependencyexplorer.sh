/home/evis/scripts/wait_for_hub.sh     
cd $AWEPIPE/astro/services/qdvsamp/treeexplorer

# Remove prepackaged xdot
if [ -e xdot.pyc ] ; then rm xdot.pyc ; fi 

if [ -e xdot.py ] ; then mv xdot.py xdot_awe.py ; fi 

# Disable prepackaged dot_static
sed -i "s/.\/dot_static/dot/g" treeexplorer.py

python2 treeexplorer.py

