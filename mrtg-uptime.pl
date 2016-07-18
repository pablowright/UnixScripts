#!/usr/bin/perl
# 
# MRTG-uptime.pl
# 
#########################

### Sample /etc/mrtg/mrtg.cfg file

#  Target[server-uptime]: `scripts/mrtg_uptime.pl`
#  Colours[server-uptime]: LIGHT BLUE#7AAFFF,BLUE#1000FF,DARK GREEN#006000,VIOLET#FF00FF
#  Options[server-uptime]: gauge,noinfo, nopercent, growright, unknaszero
#  MaxBytes[server-uptime]: 200
#  Title[server-uptime]: server uptime
#  YLegend[server-uptime]: Days
#  ShortLegend[server-uptime]: Days
#  Legend1[server-uptime]: Uptime
#  Legend2[server-uptime]:
#  LegendI[server-uptime]:
#  LegendO[server-uptime]: uptime :
#  PageTop[server-uptime]: Uptime in days

$uptime = `uptime`;
$uptime =~ /up (.*?) day/;
$up = int($1);

print "$up\n";
print "$up\n";
print "\n"; #hostname should be printed on 3rd line
print "uptime\n"; #