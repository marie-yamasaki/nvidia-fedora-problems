# in order the be able to use secure boot, run this file
# stolen from https://www.reddit.com/r/Fedora/comments/18bj1kt/fedora_nvidia_secure_boot/
# this is not a good file to run, but provides an overview over the commands to run 
sudo dnf install \   https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm #nonfree
sudo dnf upgrade --refresh 
#reboot
sudo reboot #or not i'm not your boss
sudo dnf install kmodtool akmods mokutil openssl 
sudo kmodgenca -a 
sudo mokutil --import /etc/pki/akmods/certs/public_key.der 
sudo reboot #again, not my choice
sudo dnf install gcc kernel-headers kernel-devel akmod-nvidia xorg-x11-drv-nvidia xorg-x11-drv-nvidia-libs xorg-x11-drv-nvidia-libs.i686 
modinfo -F version nvidia 
sudo akmods --force 
sudo dracut --force 
sudo reboot
