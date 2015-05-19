#source /home/evis/.bashrc

/home/evis/scripts/wait_for_hub.sh     
#export AWEPIPE=/home/evis/awehome/current

cd $AWEPIPE/astro/services/qdvsamp/simplepuller/
python2 simplepuller.py

# Browse to http://localhost:8080 to use it

