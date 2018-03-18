#!/bin/bash
#########################################################
#
# XenoPanel will call {game}.sh on pre-boot to allow for custom configuration.
#
# $1 = Run Type (install/existing)
# $2 = Server ID
# $3 = Server Ownership Username
# $4 = Server IP Address
# $5 = Server Port
# $6 = Server Slots
# $7 = Server Gametype (minecraft/source/voice)
# $8 = Server Game
# $9 = Launch (Example: ./srcds_linux)
#
#########################################################

cd /home/XenoPanel/servers/$3/$2

mkdir -p rocketmod
cd rocketmod
wget https://ci.rocketmod.net/job/Rocket.Unturned/lastSuccessfulBuild/artifact/Rocket.Unturned/bin/Release/Rocket.zip -O rocketmod.zip
unzip rocketmod.zip

cd /home/XenoPanel/servers/$3/$2

mv rocketmod/Modules/Rocket.Unturned/* Unturned_Headless_Data/Managed
mv rocketmod/Scripts/Linux/* .

