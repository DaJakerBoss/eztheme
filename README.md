# Sutoroku debian packager
Easy (hopefully) way to package the icon theme Sutoroku for Ripped Themer.

It should be easy, but I'm not all the way done as of this commit.

## Instructions
To kick things off, clone this repository onto your computer.  
*You can use `git` or you can just download the .zip file and extract it somewhere*  
*Personally, I recommend installing and using git, that way I can issue updates directly to you*  
*and you can have the updated files in a heartbeat.*  
*I've included a guide at the bottom.*  
Open up your computer's terminal and find your way into the repo.  
If you cloned this repo in your terminal it should just be in your home folder:  
`cd ~/sutoroku_installer`  
If you extracted the zip, find where you put it.  
Here's an example for your standard Downloads folder:  
`cd ~/Downloads/sutoroku_installer`  
I can make a standalone script for git if you'd like, for simplicity's sake.

*Hacker voice* You're in.  
The hard part is done.  
To run the installer, type:  
`./build.sh`  
If it wont run, no problem, just type:  
`chmod +x build.sh`  
and try again. Nothin' to it :)  

Quick guide to editing `control` if you need it:

Item | Meaning
--- | ---
Package | This is the name of the package as-installed. Only affects the package manager
Name | The name as appears in Cydia
Version | The current version as you set it
Section | Just how the repo will organize this. Don't touch unless the repo maintainers tell you
Architecture | Tells the package manager it was meant for iPhones. Don't touch
Depends | Tells the package manager and cydia what to install alongside this
Maintainer | whoever keeps up with the .deb files
Author | Whoever made the package. You.
Description | What pops up in Cydia as the description
Icon | Tells Cydia what to use as an icon. Don't touch, I've handeled it earlier in the program.

If you have *any questions* just email me. I love this stuff.

By the way, you don't have to, but I think it'd be beneficial if I was listed as the package maintainer  
This way, if anyone has problems during installation, I can see where things went wrong in the script  
and issue a fix for you!

Here's the guide on using git:

Step 1: Install it!
```
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```

Step 2: Clone my repository
```
cd ~/
git clone https://github.com/Dajakerboss/sutoroku-installer/
```

Step 3: Enter the folder
```
cd ~/sutoroku-installer
```

Boom!

To update your files when I update the repo:
```
cd ~/sutoroku-installer
git pull
```

Easy money!

Have fun! More to come!
