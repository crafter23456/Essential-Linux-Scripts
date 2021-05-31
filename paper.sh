#!/bin/bash
folder=/home/Test # add a folder to patch the paperclip
desdir=/home/CB # where the patched paperclip should be replaced
cd $folder 
echo "Downloading Paper.jar..."
version=$(curl -sN https://papermc.io/api/v2/projects/paper | jq -r '.version_groups[-1]')
build=$(curl -sN https://papermc.io/api/v2/projects/paper/versions/1.16.5 | jq -r '.builds[-1]')
wget -N https://papermc.io/api/v2/projects/paper/versions/$version/builds/$build/downloads/paper-$version-$build.jar -O paperclip.jar
echo "Finished getting paperclip.jar..."
cd $folder
java -Dpaperclip.patchonly=true -jar paperclip.jar
cd $folder/cache
echo "Renaming paper-433.jar..."
mv patched_1.16.5.jar paper-433.jar
echo "Renamed paper-433.jar..."
echo "Beginning to replace old with new jar..."
cp $folder/cache/paper-433.jar $desdir/paper-433.jar
echo "Finshed replacing old with new jar..."
