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

#Inject graphical environment into systemd user services (for immich upload button)
export XDG_CURRENT_DESKTOP=awesome
export DISPLAY=:0

dbus-update-activation-environment --systemd DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP
systemctl --user import-environment DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP

exec awesome



