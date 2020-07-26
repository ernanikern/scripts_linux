#!/bin/bash

#echo -n "password: "

#read -s PASS

echo

umount /nas/*

mount -t cifs -o "rw,credentials=/etc/ernani.credentials,iocharset=iso8859-1,uid=1000" //nas/I\$ /nas/big2

mount -t cifs -o "rw,credentials=/etc/ernani.credentials,iocharset=iso8859-1,uid=1000" //nas/G\$ /nas/usr

mount -t cifs -o "rw,credentials=/etc/ernani.credentials,iocharset=iso8859-1,uid=1000" //nas/H\$ /nas/big

mount -t cifs -o "rw,credentials=/etc/ernani.credentials,iocharset=iso8859-1,uid=1000" //nas/info\$ /nas/info

mount -t cifs -o "rw,credentials=/etc/ernani.credentials,iocharset=iso8859-1,uid=1000" //nas/usr\$/efe/aplic/infor /nas/infor
