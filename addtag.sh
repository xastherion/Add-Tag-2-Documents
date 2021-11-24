# Add Tag in Documents Ordner
mkdir ~/Documents-Temp
rsync -a ~/Documents/ ~/Documents-Temp/
mkdir -m 0700 ~/D
echo "Please add a Tag to D in Finder and press ENTER if you are ready with the Tag for D to continue"
say  "Please add a Tag to D in Finder and press ENTER if you are ready with the Tag for D to continue"
read "ENTER"
chmod -N ~/Documents
rm -r ~/Documents 
mv -v ~/D ~/Documents
chmod +a "everyone deny delete" ~/Documents
killall Finder
rsync -a ~/Documents-Temp/  ~/Documents/
rm -r ~/Documents-Temp/ 
