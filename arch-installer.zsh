#! /bin/zsh

# partition the HDD
# /dev/sda1 - grub boot loader 3MB
# /dev/sda2 - /boot 129MB
# /dev/sda3 - swap 522MB
# /dev/sda4 - / fills the rest of the HDD
parted -a optimal /dev/sda mklabel gpt unit mib mkpart primary 1 3 name 1 grub set 1 bios_grub on mkpart primary 3 131 name 2 boot mkpart primary 131 643 name 3 swap mkpart primary 643 -1 name 4 ArchRoot

# formats the drives as ext4
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda4

# makes /dev/sda3 swap and turns it on
mkswap /dev/sda3
swapon /dev/sda3

# mounts / and /boot
mount /dev/sda4 /mnt
mkdir /mnt/boot
mount /dev/sda2 /mnt/boot

# install the base system, Xorg, mesa drivers, zsh with plugins, alsa sound drivers,
# Cinnamon, and emacs
pacstrap -i /mnt base base-devel xorg-server xorg-server-utils xorg-apps xorg-xinit xf86-video-vesa mesa mesa-libgl zsh zsh-syntax-highlighting zsh-completions cinnamon alsa-utils alsa-plugins alsa-oss emacs

# generate the fstab
genfstab -U -p /mnt >> /mnt/etc/fstab

# chroot into the new system
arch-chroot /mnt /bin/zsh

# set the locale
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen

echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8

# change the console keymap to dvorak
echo "KEYMAP=dvorak" > /etc/vconsole.conf

# set the timezone to GMT -5
ln -s /usr/share/zoneinfo/America/Detroit /etc/localtime

# set the hardware clock
hwclock --systohc --utc

# set the hostname
echo "neonarch" > /etc/hostname

# enable networking
systemctl enable dhcpcd.service

# install the grub bootloader and generate the config file
pacman -S grub
grub-install --target=i386-pc --recheck /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
