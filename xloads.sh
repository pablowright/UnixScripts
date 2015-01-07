#!/bin/bash

# PRW
# 05/15/2009
#
# Start 'xload' on Linux boxes:
#
# Note depends on ssh auto login via public key between local and remote hosts. ssh-keygen, etc. chmod 700 -R .ssh
# Must run as user 'wrightp' on this computer or generate your own key.
#
# Moved to /usr/local/bin 05/15/2009. Edit that file. 

/usr/bin/ssh -Yf wrightp@linux-1.cpsboe.k12.oh.us xload -fg "black" -bg "DarkSlateBlue" -label LINUX-1-DNS-3 -geometry 110x80+10+1
/usr/bin/ssh -Yf wrightp@linux-2.cpsboe.k12.oh.us xload -fg "black" -bg "LightSlateGray" -label LINUX-2-DNS-1 -geometry 110x80+121+1
/usr/bin/ssh -Yf wrightp@linux-3.cpsboe.k12.oh.us xload -fg "black" -bg "DarkSlateGray" -label LINUX-3-DNS-2 -geometry 110x80+232+1
/usr/bin/ssh -Yf wrightp@linux-4.cpsboe.k12.oh.us xload -fg "black" -bg "slategrey" -label LINUX-4-BKUP -geometry 110x80+343+1
/usr/bin/ssh -Yf wrightp@linux-5.cpsboe.k12.oh.us xload -fg "black" -bg "DimGray" -label LINUX-5-SFTP -geometry 110x80+454+1