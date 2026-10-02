#!/bin/bash

apt-get install open-vm-tools open-vm-tools-desktop -y
mkdir -p /mnt/hgfs
vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other -o uid=1000
sudo su
echo "vmhgfs-fuse    /mnt/hgfs    fuse    defaults,allow_other    0    0"  >> /etc/fstab
