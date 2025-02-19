# Create two files: one for official packages and one for AUR packages
official_packages="official_packages.txt"
aur_packages="aur_packages.txt"

# Clear the files if they already exist
> "$official_packages"
> "$aur_packages"

# Iterate through the list of installed packages
for pkg in $(aura -Q | awk '!/nvidia|endeavouros-|eos-/ {print $1}'); do
    if pacman -Si "$pkg" > /dev/null 2>&1; then
        echo "$pkg" >> "$official_packages"
    else
        echo "$pkg" >> "$aur_packages"
    fi
done
