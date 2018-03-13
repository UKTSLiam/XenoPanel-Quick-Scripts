#!/bin/bash

cd /home/XenoPanel/servers;

for D in *; do
    if [ -d "${D}" ]; then
        echo "Attempted to repair directory permissions @ /home/XenoPanel/servers/${D}"
        chown -R ${D}:panel /home/XenoPanel/servers/${D}
        chmod -R 755 /home/XenoPanel/servers/${D}/*
        chmod 555 /home/XenoPanel/servers/${D}
    fi
done
