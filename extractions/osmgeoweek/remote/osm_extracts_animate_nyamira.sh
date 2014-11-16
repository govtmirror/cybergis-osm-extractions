#!/bin/bash
#==========##========#
BIN=/opt/cybergis-scripts.git/bin
TIMESTAMP=$(date +%s)
#==#
GS_USER=admin
GS_PASS=geoserver
#==#
GS='http://localhost:8080/geoserver/'
#==#
SRS='900913'
#===================#
#Customize Layers, bbox, width, and height for each Animation
LAYERSA=( "ittc-snapshots:osmgeoweek_nyamira_raw_1416090202" "ittc-snapshots:osmgeoweek_nyamira_raw_1416096569" )
LAYERS=$(printf ",%s" "${LAYERSA[@]}")
LAYERS=$(echo $LAYERS | cut -c 2- )
BBOX=3817398.9568298,-106878.07478487,3966565.8175076,-31549.383420317
WIDTH=1951
HEIGHT=985
#==#
AWS_ACCESS_KEY_ID=XXX
AWS_SECRET_ACCESS_KEY=XXX
S3_BUCKET='osmgeoweek'
S3_KEY='animations/nyamira_animation.gif'
#===================#
#Display URL in Command Line
#$BIN/cybergis-script-geoserver-animate.py -gs $GS --layers "$LAYERS" --srs "$SRS" --bbox "$BBOX" --width "$WIDTH" --height "$HEIGHT" --username $GS_USER --password $GS_PASS --url
#==#
#Directly push animation to AWS S3
$BIN/cybergis-script-geoserver-animate.py -gs $GS --layers "$LAYERS" --srs "$SRS" --bbox "$BBOX" --width "$WIDTH" --height "$HEIGHT" --username $GS_USER --password $GS_PASS --url --s3 --aws_access_key_id $AWS_ACCESS_KEY_ID --aws_secret_access_key $AWS_SECRET_ACCESS_KEY --s3_bucket $S3_BUCKET --s3_key $S3_KEY
