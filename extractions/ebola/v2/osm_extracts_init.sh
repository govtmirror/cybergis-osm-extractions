#!/bin/bash
#==========##========#
BIN=/opt/cybergis-scripts.git/bin
USER=admin
PASS=geoserver
GS='http://localhost:8080/geoserver/'
WS=osm-extracts
AN=hiu
AE='HIU_INFO@state.gov'
TO=360
RB=~/extractions/repos/ebola/v2/
#===================#
python $BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts osm_extracts.tsv
#===================#
