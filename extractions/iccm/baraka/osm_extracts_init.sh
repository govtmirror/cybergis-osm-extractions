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
RB=~/extractions/repos/iccm/baraka
#===================#
EXTENT='drc:baraka'
#Raw Nodes and Ways
RN=baraka_raw
REPO=$RB$RN
rm -fr $REPO
python $BIN/cybergis-script-geogig-osm-init.py  -v --path $REPO --name $RN --username $USER --password $PASS -gs $GS -ws $WS -to $TO --extent $EXTENT -an $AN -ae $AE --nodes --ways
#----------#
#Basic Buildings and Roads
RN=baraka_basic
REPO=$RB$RN
MAPPING='basic:buildings_and_roads'
rm -fr $REPO
python $BIN/cybergis-script-geogig-osm-init.py  -v --path $REPO --name $RN --username $USER --password $PASS -gs $GS -ws $WS -to $TO --extent $EXTENT --mapping $MAPPING -an $AN -ae $AE
#===================#
