#theme files

mkdir ~/.icons/
mkdir ~/.themes/
cp -r ChromeOS-dark-compact-shell ~/.themes/
cp -r McMojave-cursors ~/.icons/
cp -r Inverse-black ~/.icons/
cp -r BigSur-Originals-Gtk-Blue-Light ~/.themes/
cp -r apple-mac-plymouth /usr/share/plymouth/themes/

# infrastructure
apt install gnome-tweak-tool
apt install flatpak
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#plymouth theme

update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/mac-apple-plymouth/mac-apple-plymouth.plymouth 100
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u


#gnome 40

sudo add-apt-repository ppa:shemgp/gnome-40
sudo apt update
sudo apt install mutter
sudo apt install gnome-shell
sudo apt upgrade
gnome-shell --version
reboot
