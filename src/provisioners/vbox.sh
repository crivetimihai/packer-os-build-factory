#!/bin/bash

# Mount image
mkdir /tmp/iso
mount -t iso9660 -o loop /tmp/VBoxGuestAdditions.iso /tmp/iso

# Install additions
/tmp/iso/VBoxLinuxAdditions.run

# Cleanup
umount /tmp/iso
rm -rf /tmp/iso /tmp/VBoxGuestAdditions.iso
