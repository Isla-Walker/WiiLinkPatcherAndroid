mkdir /sdcard/WiiLink
cd /sdcard/WiiLink
apt install libicu-dev -y
DOWNLOAD_URL=$(curl -L -s https://api.github.com/repos/WiiLink24/WiiLink24-Patcher/releases/latest | grep -o -E "https://(.*)WiiLinkPatcher_Linux-ARM64(.*)")
DOWNLOAD_URL=${DOWNLOAD_URL::-1}
wget -O WLP $DOWNLOAD_URL
chmod +x WLP
./WLP
rm /sdcard/WiiLink/WLP
echo "Done. You can find the WADs and apps folders in the WiiLink folder on your device's internal storage. For use on a real Wii console, these folders should be copied to the root of your SD card. Thanks for using my patcher, I hope you have a nice day."
