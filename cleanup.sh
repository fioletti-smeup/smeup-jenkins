#!/bin/bash

yum clean all
rm -rf /tmp/*

#Disable the password by changing
passwd -l root
