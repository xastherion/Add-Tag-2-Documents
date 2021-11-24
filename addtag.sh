#!/bin/bash
# Add Tag in Documents Ordner
mkdir ~/Documents-Temp
rsync -a ~/Documents/ Documents-Temp
mkdir -m 0700 ~/D
say "add Tag to D in Finder"
echo "Press ENTER if D had a Tag"
read "ENTER"
chmod -N ~/Documents
rm -r ~/Documents 
mv -v ~/D ~/Documents
chmod +a "everyone deny delete" ~/Documents
killall Finder
