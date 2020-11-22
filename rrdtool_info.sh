#!/bin/sh

METRIC=$1

rrdtool info /var/lib/monitorix/$METRIC.rrd | grep ds | awk -F'ds' '{print $2}' | awk -F'.' '{print $1}' | sed 's/^.//' | sed 's/.$//' | sort | uniq | xargs -I {} ~/rrdtool_xport.sh $METRIC {}
