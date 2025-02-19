AUR=$(aura -Qu | wc -l)
OFFICIAL=$(checkupdates | wc -l)

case $1 in
	aur) echo " $AUR";;
	official) echo " $OFFICIAL";;
esac

if [ "$1" = "update" ]; then
	kitty --start-as=fullscreen --title all_is_kitty --hold --detach sh -c "aura -Syu"
fi

if [ "$1" = "" ]; then
	COUNT=$((OFFICIAL+AUR))
	if [[ "$COUNT" = "0" ]]
	then
		echo ""
	else
		echo " $COUNT"
	fi
	exit 0
fi
