#!/bin/bash

DIRECTORY=/storage/emulated/0/WiiLink
DOWNLOAD_URL=$(curl -L -s https://api.github.com/repos/WiiLink24/WiiLink24-Patcher/releases/latest | grep -o -E "https://(.*)WiiLinkPatcher_Linux-ARM64(.*)" | sed 's/\"//g')

apt install libicu-dev -y

curl $DOWNLOAD_URL -o WLP
chmod +x WLP

if [ -d "WAD" ]; then
  echo "Clearing up previous WADs..."
  rm -r WAD
fi
if [ -d "apps" ]; then
  echo "Clearing up previous apps..."
  rm -r apps
fi
if [ -d "$DIRECTORY" ]; then
  echo "Clearing up previous WiiLink folder..."
  rm -r $DIRECTORY
fi

./WLP

if [ ! -d "WAD" ] && [ ! -d "apps" ]; then
  echo "There are no files to copy!"
else
  mkdir $DIRECTORY
  echo Copying patched WADs...
  cp -r WAD/ $DIRECTORY/WAD
  echo Copying apps...
  cp -r apps/ $DIRECTORY/apps
  echo 'Done!'
  echo "You can find the 'WAD' and 'apps' folders in the WiiLink folder on your device's internal storage."
  echo ""
  echo "Refer to https://wiilink.ca/guide/install to continue with your installation."
fi
