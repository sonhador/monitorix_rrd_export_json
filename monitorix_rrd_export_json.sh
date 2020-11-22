#!/bin/sh

ls /var/lib/monitorix/*.rrd | awk -F'/' '{print $NF}' | sed 's/.rrd$//' | xargs -I {} ~/rrdtool_info.sh {} | perl -e 'while(<>){$l=$_;chomp $l;push(@arr,$l);}print"{\"stats\":[".(join(",",@arr))."]}";'
