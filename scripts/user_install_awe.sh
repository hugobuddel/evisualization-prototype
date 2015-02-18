
# Get the scripts
wget http://astro-wise.org/awesoft/awesetup -P /home/evis/scripts
wget http://astro-wise.org/awesoft/targetplatform.py -P /home/evis/scripts
chmod +x /home/evis/scripts/awesetup

# Install awe
/home/evis/scripts/awesetup awehome=/home/evis/awehome awetarget=astro versions=current pythonversion=2.7.9

# Set the parameters in ~/.bashrc
# TODO: Check whether parameters are already set.
echo "export TARGETPLATFORM=$(python /home/evis/scripts/targetplatform.py)" >> /home/evis/.bashrc
echo "export PATH=\${PATH}:/home/evis/awehome/\${TARGETPLATFORM}/local/bin" >> /home/evis/.bashrc
echo "export AWEPIPE=/home/evis/awehome/current" >> /home/evis/.bashrc

# Also set the parameters. Does this work?
export TARGETPLATFORM=$(python /home/evis/scripts/targetplatform.py)
export PATH=${PATH}:/home/evis/awehome/${TARGETPLATFORM}/local/bin
export AWEPIPE=/home/evis/awehome/current

mkdir /home/evis/.awe
echo "
[global]
database_user          : AWANONYMOUS
database_password      : anonymous
project                : ALL
database_name : db.astro.rug.astro-wise.org/db.astro.rug.astro-wise.org 

# necessary to work under proot
database_engine : oracle_10g
data_server : ds.astro.rug.astro-wise.org
data_port : 8000

quality_server         : quality.test.astro-wise.org

# Disable the DPU
dpu_name : ""

# data_dir_tabulardata:        
# cache_dir_sourcecollections: 
" > /home/evis/.awe/Environment.cfg

echo '/1 :pserver:anoncvs@cvs.astro-wise.org:2401/cvsroot AyZ, 03?>d' >> /home/evis/.cvspass

