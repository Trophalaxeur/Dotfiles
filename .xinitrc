# Set keyboard layout FR
#setxkbmap -layout fr
setxkbmap -model pc86,pc105 -layout gb,fr -variant extd,azerty -option grp:alt_shift_toggle

# export SSH_ASKPASS=ssh-askpass
eval $(ssh-agent -s)
ssh-add

#xscreensaver -no-splash&

# Read resources file
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#NVIDIA_Optimus tuto
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

exec awesome



