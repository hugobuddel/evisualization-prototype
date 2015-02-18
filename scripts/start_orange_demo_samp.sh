#cd ~/orange3
#git checkout develop
#git pull origin develop
#cd

/home/evis/scripts/wait_for_hub.sh 

. orange3env/bin/activate
python -m Orange.canvas /home/evis/scripts/demo_samp.ows

