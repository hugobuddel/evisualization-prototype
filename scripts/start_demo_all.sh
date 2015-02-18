# The directory this script is in.
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Starting TOPCAT, including SAMP HUB."
$DIR/start_topcat.sh

$DIR/wait_for_hub.sh

echo "Starting Orange."
$DIR/start_orange_demo_samp.sh &

echo "Starting Interactive AWE-prompt."
#$DIR/start_awe_samp.sh
$DIR/start_awe_demo.sh
