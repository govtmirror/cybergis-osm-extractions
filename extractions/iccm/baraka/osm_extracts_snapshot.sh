#!/bin/bash
#==========##========#
BIN=/opt/cybergis-scripts.git/bin
TIMESTAMP=$(date +%s)
TEMP=/home/ubuntu/temp/
#==#
GS_USER=admin
GS_PASS=geoserver
GS='http://localhost:8080/geoserver/'
WFS=$GS"wfs"
HOST='<Database Host>'
DB=<Database Name>
DB_USER='postgres'
DB_PASS=<Database Password>
NS=osm-extracts
PRJ='EPSG:4326'
#==#
#For publishing
WS=<Workspace>
DS=<Data Store>
#===================#
#Raw (Nodes and Ways)
LG=baraka_raw_$TIMESTAMP
FTA=( "baraka_raw_node" "baraka_raw_way")
SNAPA=()
STYLESA=( "cybergis_basic_point_blue" "cybergis_basic_line_blue" )
for FT in "${FTA[@]}"
do
    SNAP=$FT"_"$TIMESTAMP
    SNAPA+=($SNAP)
    echo "Snapshoting "$FT" as "$NS"_"$FT"_"$TIMESTAMP
    $BIN/cybergis-script-pull-wfs.sh $WFS $NS $FT $PRJ $HOST $DB $DB_USER $DB_PASS $SNAP $TEMP
    python $BIN/cybergis-script-geoserver-publish-layers.py -gs $GS -ws $WS -ds $DS -ft $SNAP --username $GS_USER --password $GS_PASS
done
LAYERS=$(printf ",%s" "${SNAPA[@]}")
LAYERS=$(echo $LAYERS | cut -c 2- )
STYLES=$(printf ",%s" "${STYLESA[@]}")
STYLES=$(echo $STYLES | cut -c 2- )
python $BIN/cybergis-script-geoserver-publish-layergroup.py -gs $GS -ws $WS -lg $LG --layers "$LAYERS" --styles "$STYLES" --username $GS_USER --password $GS_PASS
#===================#
#Basic (Buildings and Roads)
LG=baraka_normal_$TIMESTAMP
FTA=( "baraka_basic_osm_buildings" "baraka_basic_osm_roads" )
SNAPA=()
STYLESA=( "cybergis_structure_buildings" "cybergis_basic_line_blue" )
for FT in "${FTA[@]}"
do
    SNAP=$FT"_"$TIMESTAMP
    SNAPA+=($SNAP)
    echo "Snapshoting "$FT" as "$NS"_"$FT"_"$TIMESTAMP
    $BIN/cybergis-script-pull-wfs.sh $WFS $NS $FT $PRJ $HOST $DB $DB_USER $DB_PASS $SNAP $TEMP
    python $BIN/cybergis-script-geoserver-publish-layers.py -gs $GS -ws $WS -ds $DS -ft $SNAP --username $GS_USER --password $GS_PASS
done
LAYERS=$(printf ",%s" "${SNAPA[@]}")
LAYERS=$(echo $LAYERS | cut -c 2- )
STYLES=$(printf ",%s" "${STYLESA[@]}")
STYLES=$(echo $STYLES | cut -c 2- )
python $BIN/cybergis-script-geoserver-publish-layergroup.py -gs $GS -ws $WS -lg $LG --layers "$LAYERS" --styles "$STYLES" --username $GS_USER --password $GS_PASS
#===================#
