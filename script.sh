sudo apt update
sudo apt install gnome-tweaks -y
sudo apt install gnome-shell-extensions -y

mkdir Pictures

tar -xf pictures.tar.xz -C Pictures
cp -R Pictures/ /home/$USER

gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 40
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false

gnome-tweaks
