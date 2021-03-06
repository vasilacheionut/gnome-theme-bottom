mkdir mojave
cd mojave

sudo apt update
sudo apt upgrade
sudo apt install gnome-tweaks -y
sudo apt install gnome-shell-extensions -y

mkdir mojave
cd mojave

mkdir .theme
tar -xf Mojave-dark.tar.xz -C .theme
tar -xf Mojave-light.tar.xz -C .theme

mkdir .icons
tar -xf 01-McMojave-circle.tar.xz -C .icons

mkdir pictures
tar -xf Mojave-pictures.tar.xz -C pictures

gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 40
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false

gnome-tweaks
