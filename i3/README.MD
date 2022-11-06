# I3
i3 is a tiling window manager designed for X11, inspired by wmii and written in C. It supports tiling, stacking, and tabbing layouts, which it handles dynamically.
## brightness.sh
set brightness of the monitor
### usage
````bash
./brightness.sh <Brightness>
````
## monitor.sh
I use two monitor and it needs handler in the i3wm
### usage
````bash
# edit the script as your monitor position
./monitor.sh
````
## set_wallpaper.sh
setting wallpaper is not a peace of cake in i3wm so we use `feh` to do that
````bash
./set_wallpaper.sh <Path of your image>
````
## language.sh
Using two language in i3 is one of the problems in i3vm just use this script to do that
````bash
# Edit the script as your needs
./language.sh
````
## transparent_terminal.sh
Transparent your terminal !
````bash
./transparent_terminal.sh
````
also you add these scripts to your i3 configure to run every time you start the i3
