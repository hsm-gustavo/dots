scripts=~/.local/bin/scripts

# gsettings
gsettings set org.gnome.desktop.interface cursor-theme "catppuccin-mocha-dark-cursors"
gsettings set org.gnome.desktop.interface cursor-size 18
gsettings set org.gnome.desktop.interface gtk-theme "Tokyonight-Dark-Moon"
gsettings set org.gnome.desktop.interface icon-theme "Tokyonight-Moon"
gsettings set org.gnome.desktop.default-applications.terminal exec kitty

# notification daemon
swaync &

# waybar
$scripts/launch_waybar.sh &

# wallpaper
$scripts/wall.sh &

# other
hyprctl setcursor catppuccin-mocha-dark-cursors 24
wl-paste --watch cliphist store &
