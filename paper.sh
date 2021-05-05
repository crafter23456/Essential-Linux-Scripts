#!/bin/bash
folder=/home/Test # add a folder to patch the paperclip
desdir=/home/CB # where the patched paperclip should be replaced
cd $folder 
echo "Downloading Paper.jar..."
wget -N https://papermc.io/api/v1/paper/1.16.5/latest/download -O paperclip.jar
echo "Finished getting paperclip.jar..."
cd $folder
screen -L -A -m -d -S minecraft java -Xms2G -Xmx2G -jar paperclip.jar nogui
echo "Starting MC Server..."
sleep 5
screen -S minecraft -X stuff $'stop\n'
cd $folder/cache
echo "Renaming paper-433.jar..."
mv patched_1.16.5.jar paper-433.jar
echo "Renamed paper-433.jar..."
echo "Beginning to replace old with new jar..."
cp $folder/cache/paper-433.jar $desdir/paper-433.jar
echo "Finshed replacing old with new jar..."
