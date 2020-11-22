#!/bin/sh

METRIC=$1
DS=$2

echo `rrdtool xport --json -s -60 DEF:$DS=/var/lib/monitorix/$METRIC.rrd:$DS:AVERAGE XPORT:$DS:"$METRIC $DS"`
