# Demos

The prototype contains several demos that can be ran after installation. Not all the demos will currently succeed.


## Setup

Tell the shell where the container can be found and make shell functions.
```
source scripts/lxc_settings.sh
```

Ensure the user is setup correctly.
```
scripts/host_create_user.sh
```

Run all the software.
```
scripts/host_start_demo.sh
```


## Demo 1
NOTE: Change directory to a working directory as you will be downlodaing some data in parts (so many files) on your local machine.

Corresponds to [Milestone Base on Redmine](https://redmine.hpc.rug.nl/redmine/projects/evisualization-of-big-data/wiki/Milestone_Baseine/versions/6). Or to the top left submilestone of [Milestone Scatterplot](https://redmine.hpc.rug.nl/redmine/projects/evisualization-of-big-data/wiki/Milestone_Scatterplot); about pulling "Existing Attributes" from "Existing Tile".

```
./scripts/host_create_user.sh
./scripts/host_copy_awe_user.sh
source ./scripts/lxc_settings.sh 
./scripts/host_start_demo.sh 
```

In awe

```
universe = (SourceCollection.name == "demosmalluniverse2").max('creation_date')
samp.broadcast_sourcecollections_in_parts = True
samp.highlight_sourcecollection(universe)
```

In Orange

* Open the scatterplot.
* Choose your favourite attributes.
* Zoom in on your region of interest.
* See your data arrive.


## Demo 2
Experimental demo to test the new SourceCollection OnTheFly functionality.

First start all the software.

In awe

```
tile_name = 'Copy of 1547341: KIDS_351.7_-33.1_double_image_mode_GAAP'
q_universe = (SourceCollection.name == tile_name) & (SourceCollection.SCID == 1689741)
universe = q_universe.max('creation_date')

samp.broadcast_sourcecollections_in_parts = True
samp.use_onthefly = True
samp.highlight_sourcecollection(universe)
```

In Orange

* Open the scatterplot.
* Choose your favourite attributes.
* Zoom in on your region of interest.
* See your data arrive.
