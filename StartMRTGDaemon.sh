#!/bin/bash

#
# Start MRTG as daemon using multiple configs. This will start multiple mrtg processes. PRW 08-24-2005
# rev. 04-11.2008
# 
# This script is called at system startup from rc5

# MRTGPATH=/usr/bin
LANG=C
MRTG=/usr/bin/mrtg 
CONFIGPATH=/etc/mrtg/configs
LOGPATH=/var/lib/mrtg/mrtg.log


#################################### ADMIN (Core network) Devices: ######################################

$MRTG $CONFIGPATH/Core/Core-1/Core-1.cfg --logging $LOGPATH            # Core-1
$MRTG $CONFIGPATH/Core/Core-2/Core-2.cfg --logging $LOGPATH            # Core-2

#################################### INTERNET Devices:    ###############################################

$MRTG $CONFIGPATH/Internet/FUSE-ETECH/fuse-etech.cfg --logging $LOGPATH            # Internet Routers

$MRTG $CONFIGPATH/Internet/Firewall/fortinet.cfg --logging $LOGPATH		# CPS Fortinet Firewall

# $MRTG $CONFIGPATH/Internet/PIX/PIX.cfg --logging $LOGPATH                          # CPS PIX Firewall

$MRTG $CONFIGPATH/Internet/Oracle-VPN/orapix.cfg --logging $LOGPATH                # Oracle PIX Firewall

# $MRTG $CONFIGPATH/Internet/Foundry-SI/foundry-si.cfg --logging $LOGPATH            # Foundry ServerIron

$MRTG $CONFIGPATH/Internet/Foundry-FI/internet-f-switch.cfg --logging $LOGPATH     # Foundry FastIron



#################################### Ed Center Devices:  ###############################################

# $MRTG $CONFIGPATH/Ed-Center/third-floor/sis-3rdfl-3550.cfg --logging $LOGPATH      # 3rd Floor SIS
