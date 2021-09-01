# Set keyboard layout FR
setxkbmap -layout fr

xscreensaver -no-splash&

# Read resources file
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#NVIDIA_Optimus tuto
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

exec awesome



