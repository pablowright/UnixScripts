#!/bin/bash

# PRW: Prune files in the /home 'SFTP' directory older that 30 days per SFTP policy.
# v. .05 PRW 06/24/2009
#
# Run from root cron nightly AFTER backups. root# crontab -l for details.
#
# per sftp policy, special arangements may be made to keep files longer so we exclude
# some directories, 'testadm' for example.
#
# 06/24/2009 Excluded directories: /home/testadm, /home/work, /home/wrightp
# All other files in /home will be removed after 30 days 
# 07/10/2009 (now 10 days- per CIO).

FIND="/usr/bin/find"

$FIND /home \
           -wholename '/home/testadm' -prune \
        -o -wholename '/home/work' -prune \
        -o -wholename '/home/wrightp' -prune \
        -o ! -type f \
        -o -mtime +10 \
        -exec  rm {} \;

# END OF SCRIPT.

# Other options....
#        -exec ls -l {} \;
#        -o -print
#        -o -mtime +31 (last MODIFIED)
#        -o -atime +31 (last ACCESSED)

# PRW EOF
