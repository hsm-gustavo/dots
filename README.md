# Gustavo's Dots

## Preview

https://github.com/user-attachments/assets/a7cad809-11da-4a61-b97d-dc4a35ddcfad

## Packages

**Important:** Before installing the packages, please review the content of each `.txt` file and modify them to suit your needs.

### Official repo packages

To install packages from the official repositories, use the following command:


```bash
pacman -S --needed --noconfirm - < official_packages.txt
```

### AUR packages

Some additional setup is required for installing certain AUR packages. Follow the steps below for packages like wlogout and Spotify (if using the Spicetify configuration).

#### Importing GPG Keys

##### For wlogout

1. Download the pub .asc file from [Ubuntu Keyserver](https://keyserver.ubuntu.com/pks/lookup?search=F4FDB18A9937358364B276E9E25D679AF73C6D2F&fingerprint=on&op=index)
2. Import manually with gpg:

```bash
gpg --import ~/Downloads/[key].asc
```

##### For Spotify

1. Follow the tutorial pinned in the commentson the [Spotify AUR package](https://aur.archlinux.org/packages/spotify) page to import the necessary keys.


#### AUR Helper

Now you're free to install the AUR packages. If you want an AUR helper, I recommend using [aura-pm](https://github.com/fosskers/aura), but any helper is fine.

##### Installing aura

1. Clone the repo:
```bash
git clone https://aur.archlinux.org/aura.git
cd aura
```
2. Build and install the package:
```bash
makepkg -s
sudo pacman -U <the-package-file-that-makepkg-produces>
```

##### Installing packages with aura

Once your AUR helper is ready, you can install the packages listed in `aur_packages.txt`: `aura -A --noconfirm - < aur_packages.txt`

## Credits
- [r/unixporn](https://www.reddit.com/r/unixporn/)
- [PROxZIMA](https://github.com/PROxZIMA/.dotfiles/)
- And all the package mantainers and artists
