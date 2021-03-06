sudo apt update
sudo apt upgrade
sudo apt install gnome-tweaks -y
sudo apt install gnome-shell-extensions -y

mkdir mojave
mkdir mojave/.themes
mkdir mojave/.icons
mkdir mojave/Pictures

tar -xf Mojave-dark.tar.xz -C mojave/.themes
tar -xf Mojave-light.tar.xz -C mojave/.themes
cp -R .themes/ /home/$USER

tar -xf 01-McMojave-circle.tar.xz -C mojave/.icons
cp -R .icons/ /home/$USER

tar -xf Mojave-pictures.tar.xz -C mojave/Pictures
cp -R Pictures/ /home/$USER

gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 40
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false

gnome-tweaks
