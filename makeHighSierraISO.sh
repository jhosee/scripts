#!/bin/sh
#
# Use at your own risk
#
hdiutil create -o /tmp/macOS13.cdr -size 5200m -layout SPUD -fs HFS+J
hdiutil attach /tmp/macOS13.cdr.dmg -noverify -mountpoint /Volumes/cdrimg
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/cdrimg
mv /tmp/macOS13.cdr.dmg ~/Desktop/macOS13.dmg
hdiutil detach /Volumes/Install\ macOS\ High\ Sierra
hdiutil convert ~/Desktop/macOS13.dmg -format UDTO -o ~/Desktop/macOS13.iso