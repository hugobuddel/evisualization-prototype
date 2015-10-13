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

The universe in this demo has too many attributes and therefor does not work properly. Try demo 3 for a simpler universe.

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

## Demo 3
Experimental demo to test the new SourceCollection OnTheFly functionality.

This is the same as demo 2, but with less attributes.


In awe
```
universe = (SourceCollection.SCID == 1719221)[0]

samp.broadcast_sourcecollections_in_parts = True
samp.use_onthefly = True
samp.highlight_sourcecollection(universe)
```

In Orange

* Open the scatterplot.
* Choose your favourite attributes.
* Zoom in on your region of interest.
* See your data arrive.

## Demo 4
Demonstrate the incremental learner on the Infinitable.

Note: This demo works best if you disable pulling in the background by commenting out the following code in LazyTable:

    if not self.stop_pulling:
      self.pull_in_the_background()
      
This is because the incremental learner widget instead pulls it's data via the iterator interface. If you do not comment out the above code then the incremental learner will still work, but it will get reset every five seconds or so when the above code gets triggered. This is because it is designed to be reset when new data is first connected (which make sense?) and the code above ends up calling the same callback function (which should be fixed).

After making the change above and re-running Orange, you can open '/home/evis/scripts/demo_inc_learner.ows'. then open the 'Stochastic Gradient Descent' widget and check the 'Pull data' checkbox. This will causes data to be pulled in via the iterator every second (though as noted above, it will get reset every five seconds if you don't comment out the previous code).

You can specify a region of interest by clicking and dragging on the plot. This will draw a green rectangle when you release the mouse button. Incoming instances are then constrained to this range, *but actually this feature appears to be broken in the prototype* as it prevents *any* further instances from arriving. It does work in the 'incremental-learner' branch but of course this involves building a new version of Orange, etc. Unfortunatly I am writing this on my last day on the project so won't have time to investigate this further.

The 'Use dynamic bounds' option just adjusts the size of the axes to match the contents.

## Demo 5
Experimental demo to test the use of classification in Orange with data from Astro-WISE. Note that this demo does not currently work in practice!

In awe
```
q_universe = (SourceCollection.name == 'testevisclassificationdemo1')
universe = q_universe.max('creation_date')

samp.broadcast_sourcecollections_in_parts = True
samp.use_onthefly = False
samp.highlight_sourcecollection(universe)
```

In Orange

* Do the classification.

## Demo 6 Infinitable
Demo using the Infinitable. (Unde development.)

* Start Orange.
* Create an `InfiniTable` widget connecting to a `Data Table` and `Scatter Plot` widget.
* In the `Data Table` widget:
 * See many (1000000) rows in info box.
 * Browse around, can browse to all rows quickly.

## Demo 7 SAMP pushing
* Start Orange.
* Create an `SAMP` widget connecting to a `Data Table` and `Scatter Plot` widget.
* Start the aweprompt.

In awe:
```
samp = Samp()
sc = (SourceCollection.SCID == 100511)[0]
samp.broadcast(sc)
```





