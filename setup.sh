#!/bin/bash

useradd -G wheel $USERNAME
echo $PASSWORD | passwd $USERNAME --stdin

passwd -e $USERNAME

firewall-cmd --zone=public --change-interface=ens33 --permanent

yum install -y open-vm-tools
