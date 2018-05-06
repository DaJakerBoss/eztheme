# Sutoroku debian packager
Easy (hopefully) way to package the icon themes from all themers.

It should be easy, but I'm not all the way done as of this commit.

## Instructions
To kick things off, clone this repository onto your computer.  
*You can use `git` or you can just download the .zip file and extract it somewhere*  
*Personally, I recommend installing and using git, that way I can issue updates directly to you*  
*and you can have the updated files in a heartbeat.*  
Open up your computer's terminal and find your way into the repo.  
If you cloned this repo in your terminal it should just be in your home folder:  
`cd ~/eztheme`  
I go more in depth in the next section

If you extracted the zip, find where you put it.  
Here's an example for your standard Downloads folder:  
`cd ~/Downloads/eztheme`  
I can make a standalone script for git if you'd like, for simplicity's sake.

*Hacker voice* You're in.  
The hard part is done.  
To run the installer, type:  
`./build`  
If it wont run, no problem, just type:  
`chmod +x build`  
and try again. Nothin' to it :)  

#### Installing and Using Git with this script

Step 1: Install it!
```
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```

Step 2: Clone my repository
```
cd ~/
git clone https://github.com/Dajakerboss/eztheme/
```

Step 3: Enter the folder
```
cd ~/eztheme
```

Boom!

To update your files when I update the repo:
```
cd ~/eztheme
git pull
```

Easy money!


## Guide to `control`

Item | Meaning
--- | ---
Package | This is the name of the package as-installed. Name according to Cydia and `dpkg`
Name | The name as appears in Cydia
Version | The current version as you set it
Section | Just how the repo will organize this. Don't touch unless the repo maintainers tell you.
Architecture | Tells the package manager it was meant for iPhones. Don't touch.
Depends | Tells the package manager and cydia what to install alongside this.
Maintainer | whoever keeps up with the .deb files. You should keep this as me so I can be contacted for errors in my script.
Author | Whoever made the package. You.
Description | What pops up in Cydia as the description
Icon | Tells Cydia what to use as an icon. Don't touch, I've handled it in the script.

### Editing the `control` file:
This script uses the easy-to-learn and popular editing tool `nano`

There are only a few things you need to know:  
Write out (^O or Ctrl + O [as in oh not zero]) saves the file, and enter confirms the save
Exit command (^X or Ctrl + X) closes `nano` and continues the program

I decided against `vi` or `vim` since I didn't want to include a 5 page document on how to edit 8 lines of a file.

There are a few lines that will need your attention:

```
Depends: com.anemonethemeing.anemone
```
If you find that your theme works on a specific iOS range (e.g. iOS 8+), then add `firmware (>= [iOS Version])`, where iOS version is the lowest iOS that will be compatible.
Example of this line:  
`Depends: com.anemonethemeing.anemone, firmware (>= 8.0)` for a theme with iOS support for 8 and up.

```
Package: 
```
This is the name that iOS uses. Usually, you'd want to keep it in line with how iOS apps usually go:  
`com.[author].[package]`  
For instance, take Sutoroku by Ripped Themer:
`com.rippedthemer.sutoroku`

### Preinst and Postinst files

These are two files that I automatically place inside of the `~/[package name]_[version]/DEBIAN/` folder.  
These are the two files that will output messages in Cydia when the package is being installed.

If you'd like to change these any, feel welcome to it!  
The standard command to put out text is `echo "[message]"`  
You can add lines to your liking :-)

### Side note for compiling
I have noted that `dpkg` will throw warnings in my script for the control file. Here's what that means:

`dpkg` as it has been installed on your system is not accustomed to haveing certain fields on the control file filled out. It specifies these lines as "user-defined"  
Cydia and the iOS `dpkg` that Saurik included are in fact compatible with these lines, and require a few.  
I didn't want to censor these messages in case it threw you an actual error and you needed to let me know.  
If you see these, it's safe to ignore them :-)  



If you have *any questions* just email me. I love this stuff.

By the way, you don't have to, but I think it'd be beneficial if I was listed as the package maintainer  
This way, if anyone has problems during installation, I can see where things went wrong in the script  
and issue a fix for you!

Have fun! If you need anything more, feel free to reach out!
