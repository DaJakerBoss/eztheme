# Sutoroku debian packager
Easy (hopefully) way to package the icon theme Sutoroku for Ripped Themer.

It should be easy, but I'm not all the way done as of this commit.

## Instructions
To kick things off, clone this repository onto your computer.  
*You can use `git` or you can just download the .zip file and extract it somewhere*  
*Personally, I recommend installing and using git, that way I can issue updates directly to you*  
*and you can have the updated files in a heartbeat.*  
Open up your computer's terminal and find your way into the repo.  
If you cloned this repo in your terminal it should just be in your home folder:  
`cd ~/sutoroku_installer`  
I go more in depth in the next section

If you extracted the zip, find where you put it.  
Here's an example for your standard Downloads folder:  
`cd ~/Downloads/sutoroku_installer`  
I can make a standalone script for git if you'd like, for simplicity's sake.

*Hacker voice* You're in.  
The hard part is done.  
To run the installer, type:  
`./build`  
If it wont run, no problem, just type:  
`chmod +x build`  
and try again. Nothin' to it :)  

## Installing and Using Git with this script

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


## Guide to `control`

Item | Meaning
--- | ---
Package | This is the name of the package as-installed. Name according to Cydia and `dpkg`
Name | The name as appears in Cydia
Version | The current version as you set it
Section | Just how the repo will organize this. Don't touch unless the repo maintainers tell you
Architecture | Tells the package manager it was meant for iPhones. Don't touch
Depends | Tells the package manager and cydia what to install alongside this
Maintainer | whoever keeps up with the .deb files
Author | Whoever made the package. You.
Description | What pops up in Cydia as the description
Icon | Tells Cydia what to use as an icon. Don't touch, I've handled it in the script.

### Editing the `control` file:

There are a few that will need your attention:

```
Depends: firmware (>= 8.0), com.anemonethemeing.anemone
```
If you find that your theme works on an iOS lower than 8.0, edit this to your liking.

```
Package: com.rippedthemer.sutoroku
```
If you want another name for your package as Cydia and apt installs it, feel free to mess with it!

### Preinst and Postinst files

These are two files that I automatically place inside of the `~/sutoroku_[version]/DEBIAN/` folder.  
These are the two files that will output messages in Cydia when the package is being installed.

If you'd like to change these any, feel welcome to it!  
The standard command to put out text is `echo "[message]"`  
You can add lines to your liking :-)


If you have *any questions* just email me. I love this stuff.

By the way, you don't have to, but I think it'd be beneficial if I was listed as the package maintainer  
This way, if anyone has problems during installation, I can see where things went wrong in the script  
and issue a fix for you!

Have fun! If you need anything more, feel free to reach out!
