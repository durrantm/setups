#!/bin/bash

# Joshua V. Dillon
# jvdillon (a) gmail (.) com
#
# Script to make Mac bootable USB.
#
# Copyright (c) 2011 Joshua V Dillon
# All rights reserved. See end-of-file for license.

# plug in USB drive and obtain device name:
# dmesg|tail
# unmount it if it was  mounted

#sudo aptitude install zsync
#zsync http://cdimage.ubuntu.com/daily-live/current/oneiric-desktop-amd64+mac.iso.zsync
## -OR -
#wget http://cdimage.ubuntu.com/releases/11.04/release/ubuntu-11.04-desktop-amd64+mac.iso

# update these:
UBUNTUISO="/home/durrantm/Dropbox_not_syncd/careeer/ubuntus/ubuntu-11.04-desktop-amd64+mac.iso"
USBDEV="/dev/sdb"
# NOTE: the USBDEV should not have any numbers in it. Replace 'X' with the
# appropriate LETTER ONLY.

# 1) format the usb thumb drive
sudo mkfs.vfat "${USBDEV}" -I

# 2) mount the iso
sudo mkdir /media/iso
sudo mount -o loop "${UBUNTUISO}" /media/iso

# 3) mount the usb drive
sudo mkdir /media/external
sudo mount "${USBDEV}" /media/external

# 4) copy the iso contents to usb drive
sudo rsync -avPh --stats /media/iso/ /media/external/

# 5) prep for syslinux
sudo mv /media/external/isolinux /media/external/syslinux
sudo mv /media/external/syslinux/isolinux.cfg /media/external/syslinux/syslinux.cfg

# 6) unmount
sudo umount /media/iso
sudo umount "${USBDEV}"

# 7) make disk bootable
sudo aptitude install syslinux mtools
sudo syslinux "${USBDEV}"

#  Redistribution and use in source and binary forms, with or
#  without modification, are permitted provided that the
#  following conditions are met:
#   * Redistributions of source code must retain the above
#     copyright notice, this list of conditions and the
#     following disclaimer.
#   * Redistributions in binary form must reproduce the above
#     copyright notice, this list of conditions and the
#     following disclaimer in the documentation and/or other
#     materials provided with the distribution.
#   * Neither the name of the author nor the names of its
#     contributors may be used to endorse or promote products
#     derived from this software without specific prior written
#     permission.
#  
#  THIS SOFTWARE IS PROVIDED BY JOSHUA V DILLON ''AS IS'' AND
#  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
#  TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
#  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL JOSHUA
#  V DILLON BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
#  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
#  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
#  HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
#  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

