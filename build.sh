#!/bin/bash
#I'm trying to get this out ASAP, so commenting will be brief
#Build tool for the sole use of Ripped Themer's Sutoroku theme
#at least until i get around to something more complicated when i get time

echo "Hello Ripped Themer!"
echo "First things first, let me get eveything in shape"
echo "What version is this?"
read version
echo "Let me see if the directories are there..."
#Directory check to save time
for path in ~/sutoroku_*/
do
	echo "It is! Saves us some time"
	cp -r ~/sutoroku_*/ ~/sutoroku_$version/
	d=y
	break
done
if [[ $d != "y" ]] && [[$d != "Y"]] ; then
	echo "It's not there."
	echo "Let's fix that"
	mkdir ~/sutoroku_$version
	mkdir ~/sutoroku_$version/Applications
	mkdir ~/sutoroku_$version/Applications/Sutoroku.app
	mkdir ~/sutoroku_$version/Library
	mkdir ~/sutoroku_$version/Library/Themes
	mkdir ~/sutoroku_$version/DEBIAN
	DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	mv $DIR/icon.png ~/sutoruko_$version/Applications/Sutoroku.app/
	chmod 755 ~$DIR/control
	mv $DIR/control ~/sutoroku_$version/DEBIAN/
fi
echo "right, let's get the actual theme in"
echo "go ahead and drag the folder Sutoroku.theme into the terminal"
echo "then press enter"
read dir
echo "copying it in"
cp $dir ~/sutoroku_$version/Library/Themes/
echo "alright! everything's in!"
echo ""
echo "Would you like to change the package icon [y/n]?
read ico
if [[ $ico == "y" ]] || [[ $ico == "Y"]] ; then
	echo "okay! drag and drop that file in and press enter like before"
	read icon
	echo "alright! got it, copying it in"
	cp -r $icon ~/sutoroku_$version/Applications/Sutoroku.app/icon.png
	echo "done!"
	else
	echo "alright!"
fi
echo ""
echo ""
echo "I am going to open the 'control' file."
echo "this file is a little too advanced for me to parse, since I'm not too well versed in that"
echo "You can get everything updated as you need. Press Ctrl + O (omega)[Write Out] , then enter to save the file"
echo "Everything should be obvious :)"
echo "if not check the README.md"
echo "when you're ready press enter"
read -n 1 -s
nano ~/sutoroku_$version/DEBIAN/control
clear
echo "alright, let's go!"
echo "I'm starting the compile"
dpkg-deb -Zgzip -b ~/sutoroku_$version
echo "that's all! the new .deb is in your home directory!"
exit
