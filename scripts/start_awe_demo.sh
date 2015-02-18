# Wait until we have a SAMP HUB.
/home/evis/scripts/wait_for_hub.sh

# Move to a directory that could be cleared out afterwards
mkdir -p /home/evis/demo
pushd /home/evis/demo

# Start awe with some extra settings.
awe -i /home/evis/scripts/start_awe_demo.py

# Get out of the demo directory
popd
