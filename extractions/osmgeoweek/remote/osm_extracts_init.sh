#!/bin/bash
#==========##========#
BIN=/opt/cybergis-scripts.git/bin
USER=admin
PASS=geoserver
GS='http://localhost:8080/geoserver/'
WS=osmgeoweek-extracts
AN=hiu
AE='HIU_INFO@state.gov'
TO=360
RB=~/extractions/repos/osmgeoweek/remote/
#===================#
EXTRACTS=osm_extracts_colombo.tsv
$BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_guinea_1.tsv
$BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_guinea_2.tsv
$BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_kathmandu.tsv
$BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_khulna.tsv
$BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_nyamira.tsv
$BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
EXTRACTS=osm_extracts_philippines.tsv
$BIN/cybergis-script-geogig-osm-init.py  -v --parent $RB --username $USER --password $PASS -gs $GS -ws $WS -to $TO -an $AN -ae $AE --extracts $EXTRACTS
#==#
