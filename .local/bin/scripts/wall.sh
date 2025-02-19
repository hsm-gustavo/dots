#!/usr/bin/bash

wallpaper_dir="$HOME/Imagens/wallpapers"

if ! command -v swww &> /dev/null; then
    notify-send "Error: swww is not installed."
    exit 1
fi

if [ ! -d "$wallpaper_dir" ]; then
    notify-send "Error: Wallpaper directory not found: $wallpaper_dir"
    exit 1
fi

swww query || swww init

set_wall() {
	local image="$1"	
	swww img "$image" --transition-fps 60 --transition-type grow --transition-pos 0.0,0.0 --transition-duration 2
}


while true; do
	images=("$wallpaper_dir"/*)

	shuf -e "${images[@]}" | while read -r image; do
		echo "Setting wallpaper: $image"
		set_wall "$image"

		sleep 300
	done
done

