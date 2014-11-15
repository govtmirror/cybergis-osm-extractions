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
#===================#
EXTRACTS=osm_extracts_colombo.tsv
python  $BIN/cybergis-script-geogig-osm-sync.py false -v -gs $GS -ws $WS --username $USER --password $PASS -an $AN -ae $AE -to $TO --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_kathmandu.tsv
python  $BIN/cybergis-script-geogig-osm-sync.py false -v -gs $GS -ws $WS --username $USER --password $PASS -an $AN -ae $AE -to $TO --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_khulna.tsv
python  $BIN/cybergis-script-geogig-osm-sync.py false -v -gs $GS -ws $WS --username $USER --password $PASS -an $AN -ae $AE -to $TO --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_nyamira.tsv
python  $BIN/cybergis-script-geogig-osm-sync.py false -v -gs $GS -ws $WS --username $USER --password $PASS -an $AN -ae $AE -to $TO --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_philippines.tsv
python  $BIN/cybergis-script-geogig-osm-sync.py false -v -gs $GS -ws $WS --username $USER --password $PASS -an $AN -ae $AE -to $TO --extracts $EXTRACTS
