from astro.config.startup import *
from astro.main.sourcecollection.SourceCollectionTree import SourceCollectionTree

import os

# Set the loglevel to a binary mask for more logging.
#Env['loglevel'] = 63

# The commented-out code below is relevant to demo pulling of expensive
# attributes, which is still experimental.

# Overload the function to sort new AttributeCalculators to give
# preference to the photometric redshift calculator on the CVS.
#from astro.main.sourcecollection.SourceCollectionTree import key_find_attribute_new_calculators
#def my_key_find_attribute_new_calculators(scd):
#    """
#    Rank such that the file based ACDs are ranked higher.
#    """
#    tkey = key_find_attribute_new_calculators(scd)
#    if 'PYTHON:' in scd['sc'].definition.filename:
#        tkey += 10
#    else:
#        tkey -= 10
#    
#    return tkey

#SourceCollectionTree.key_functions['find_attribute_new_calculators'] = my_key_find_attribute_new_calculators

#os.environ["BPZPATH"] = "/home/evis/BPZ/"

#context.set_project("KIDS")

samp = Samp()
samp.use_onthefly = False
samp.broadcast_sourcecollections_in_parts = True

