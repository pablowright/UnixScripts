#!/bin/bash
# Sysadmin script PART 1 http://www.saiweb.co.uk
# Provided under the MIT license (http://www.opensource.org/licenses/mit-license.php)
# © D.Busby
# change ABC.DEF.HIJ.KLM to your IP address (the server you are checking on.)
function usage {
echo "Usage: portcon port";
echo "i.e. portcon 80";
}
function portcon {
echo "----- Active Connections For Port $1 -----";
netstat -ant | grep "ABC.DEF.HIJ.KLM:$1 " | wc -l
netstat -ant | grep "ABC.DEF.HIJ.KLM:$1 " | awk '{ print $5 }'  | awk -F \: '{ print $1  }' | sort | uniq -c  | sort -n
}
if [ -z "$1" ]; then
usage;
exit
fi
$1 $2