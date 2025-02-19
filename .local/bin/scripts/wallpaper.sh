#!/bin/bash

interval=300
walldir=$HOME/Imagens/wallpapers/

if [ ! -d "$walldir" ]; then
	notify-send "Wallpaper directory $walldir does not exist!"
	exit 1
fi

if [ -z "$(find "$walldir" -type f)" ]; then
    notify-send "No wallpapers found in $walldir!"
    exit 1
fi

monitor=`hyprctl monitors | grep Monitor | awk '{print $2}'`


set_wallpaper() {
	local img="$1"
	ln -f "$img" ~/Imagens/wallpapers/background
	hyprctl hyprpaper unload all
	hyprctl hyprpaper preload "$img"
	hyprctl hyprpaper wallpaper "$monitor, $img"
}

hyprctl hyprpaper preload ~/Imagens/wallpapers/the-herta.jpg
hyprctl hyprpaper wallpaper "HDMI-A-1,~/Imagens/wallpapers/the-herta.jpg"

while true; do
	find $walldir -type f | shuf | while read -r img; do
		set_wallpaper "$img"
		sleep $interval
    	done
done
