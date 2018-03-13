#!/bin/bash

#
# Fixing an issue with Workship downloading.
#
# This will look through all directory's inside XenoPanel /servers/ and create the correct directory.
#
# This Fix is only needed for any panel lower than Build 14.
#

cd /home/XenoPanel/servers;

for D in *; do
    if [ -d "${D}" ]; then
        mkdir -p /home/XenoPanel/servers/${D}/Steam
        echo "Attempted to create Steam directry @ /home/XenoPanel/servers/${D}"
    fi
done
