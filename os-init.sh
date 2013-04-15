#!/bin/sh
#
# this script is designed to be ran as ROOT on SABAYON 11
#

# check if we are root
if [ `whoami` != "root" ]; then
    echo "You must run this script as root, preferably with sudo.";
    exit;
fi

# check if we're using sudo
if [ $SUDO_USER == "" ]; then
    echo "You should launch this script with sudo, not su. if you don't have sudo, 'SUDO_USER=username $0'";
    exit;
fi

DST_USER="$SUDO_USER";

equo install x11-wm/i3 rxvt-unicode vim spotify firefox google-chrome firefox

