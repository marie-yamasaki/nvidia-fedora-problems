#https://discussion.fedoraproject.org/t/fedora-37-nvidia-kernel-module-missing-falling-back-to-nouveau/71372/6
sudo dnf remove *nvidia* --noautoremove --exclude=nvidia-gpu-firmware
sudo dnf install akmod-nvidia-470xx --disablerepo rpmfusion-nonfree-nvidia-driver --enablerepo rpmfusion-nonfree
# sleep 5min 
sleep 300 #seconds / 5min
dnf list installed *nvidia*