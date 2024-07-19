# WiiLinkPatcherAndroid
Run the arm64 build of the WiiLink patcher through Termux on your Android device 

## WARNING - I AM NOT AFFILIATED WITH WIILINK. THIS IS AN UNOFFICIAL SCRIPT, PLEASE DON'T CONTACT THEM WITH ISSUES

### How it works
This project works through the Android app Termux, which allows the installation of a Debian Linux environment. All this script does is install the Debian environment, run the WiiLink patcher for arm64 linux inside of it, and copy the patched files to your phone's internal storage.

### Getting started
#### Step one
Install Termux from [F-Droid](https://f-droid.org/en/packages/com.termux/). The Google Play Store version is unstable and missing functionality, see [here](https://github.com/termux-play-store/) for more information.
#### Step two
Go into the app info settings, and ensure Termux has the Files permission. This is needed, as otherwise the patched files can't be copied outside of the Debian sandbox.
#### Step three
Enter Termux, and run:
```
pkg install wget
```
#### Step four
Download the script
```
wget https://raw.githubusercontent.com/AyeItsHarry/WiiLinkPatcherAndroid/main/termux.sh
```
#### Step five
Make it executable
```
chmod +x termux.sh
```
#### Step six
Run the patcher
```
./termux.sh
```
Once in the patcher, your SD card will NOT be detected. This behaviour is expected. Run the patcher without an SD card, and exit it once it has patched the files. The script will then copy the files the patcher generated to the WiiLink folder on your device's internal storage. From there, you can either install the WADs in Dolphin, or copy them over to an SD card for use on a real Wii.
