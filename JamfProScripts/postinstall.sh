#!/bin/sh

# reset the FinderInfo section to the folder icon displays correctly
cd /Applications/
FOLDER=$(ls | grep Jamf | grep Pro)
if [ -d "$FOLDER" ]
then
	cd "$FOLDER"
	/usr/bin/xattr -xw com.apple.FinderInfo '00 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00' .
	/usr/bin/find ./ -name "*nfo.plist" -exec chmod 666 {} \;
fi