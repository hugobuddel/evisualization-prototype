# evisualization-prototype
Prototype of the eVisualization project software.
This repository describes how to create an end-to-end query-driven system by combining Astro-WISE and Orange.

## Quickstart

First get this repository.
```
git clone https://github.com/hugobuddel/evisualization-prototype.git
```

Fetch the preinstalled Linux container that contains all the software
```
evisualization-prototype/scripts/get_prototype_preinstalled.sh
```

Start in demo mode. This starts a SAMP Hub, Orange, and Astro-WISE with the proper settings.
```
evisualization-prototype/scripts/host_start_demo.sh
```

Select an interesting dataset on the awe-prompt:
```
universe = (SourceCollection.name == "demouniverseclassifystarsb").max('creation_date')
```

Tell Orange about this interesting catalog.
```
samp.highlight_sourcecollection(universe)
```

Open the Stochastic Gradient Descent widget and wait for some data to arrive.
Subsequently check the 'use region of interest' checkbox to only pull the most relevant data.


## Full Documentation
* The full installation instructions can be found in [INSTALL.md](INSTALL.md).
* More information about the demo can be found on the Orange repository: https://github.com/hugobuddel/orange3
* More demos can be found in [DEMOS.md](DEMOS.md).


## TODO

Some todos can be found on this github, some on the Orange3 fork and some as tasks on Redmine:
* https://github.com/hugobuddel/evisualization-prototype/issues
* https://github.com/hugobuddel/orange3/issues
* https://redmine.hpc.rug.nl/redmine/projects/evisualization-of-big-data/issues
