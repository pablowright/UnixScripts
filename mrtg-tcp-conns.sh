#!/bin/sh
# 
# MRTG number of TCP connections graphs
#
#########################

### Sample /etc/mrtg/mrtg.cfg usage
#  Title[server-numconns]: Server TCP connections
#  Target[server-numconns]: `scripts/mrtg-numconns.sh`
#  PageTop[server-numconns]: TCP connections
#  MaxBytes[server-numconns]: 1000
#  YLegend[server-numconns]: Connections
#  ShortLegend[server-numconns]: connections
#  LegendO[server-numconns]: Connections
#  Options[server-numconns]: gauge, growright


if [ "$1" = "" ] ; then
	O=`/bin/netstat -nt | fgrep ESTABLISHED | wc -l`
	label='numconns'
else
	O=`/bin/netstat -nt | fgrep ESTABLISHED | fgrep "$1" | wc -l`
	label="$1"
fi
echo $O
echo $O
hostname
echo "$label"