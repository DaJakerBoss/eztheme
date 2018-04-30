#!/bin/bash
#I'm trying to get this out ASAP, so commenting will be brief
#Build tool for the sole use of Ripped Themer's Sutoroku theme

echo "Hello Travis!"
echo "First things first, let me get eveything in shape"
echo "What version is this?"
read version
echo "Let me see if the directories are there..."
#Directory check to save time
if [ -d "~/sutoroku*" ]; then
	echo "It is! Saves us some time"
	else
	d=y
	echo "It's not there."
	echo "Let's fix that"
	mkdir ~/sutoroku_$version
	mkdir ~/sutoroku_$version/Applications
	mkdir ~/sutoroku_$version/Applications/Sutoroku.app
	mkdir ~/sutoroku_$version/Library
	mkdir ~/sutoroku_$version/Library/Themes
	mkdir ~/sutoroku_$version/DEBIAN
	mv icon.png ~/sotoruko_$version/Applications/Sutoroku.app/
	mv control ~/sutoroku_$version/DEBIAN/
	chmod 755 ~/sutoroku_$version/DEBIAN/control
fi
echo "right, let's get the actual theme in"
echo "go ahead and drag the folder Sutoroku.theme into the terminal"
read dir
echo "copying it in"
cp $dir ~/sutoroku_$version/Library/Themes/
echo "alright! everything's in!"
echo ""
echo ""
echo "I am going to open the 'control' file."
echo "this file is a little too advanced for me to parse, since I'm not too well versed in that"
echo "You can get everything updated as you need. Press Ctrl + O (omega)[Write Out] , then enter to save the file"
echo "Everything should be obvious :)"
echo "when you're ready press enter"
read lol
nano ~/sutoroku_$version/DEBIAN/control
clear
echo "alright, let's go!"
echo "I'm starting the compile"
dpkg-deb -Zgzip -b ~/sutoroku_$version
echo "that's all! the new .deb is in your home directory!"
exit
