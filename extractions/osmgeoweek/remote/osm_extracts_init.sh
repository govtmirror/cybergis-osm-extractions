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
EXTRACTS=osm_extracts_colombo.tsv
python $BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_kathmandu.tsv
python $BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_khulna.tsv
python $BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_nyamira.tsv
python $BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_philippines.tsv
python $BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
