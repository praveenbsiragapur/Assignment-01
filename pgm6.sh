#!/bin/sh

MYVAR=$(dialog --inputbox "Enter IP Address" 25 25  --output-fd 1)
MYVAR1=$(dialog --inputbox "Enter sudo password" 25 25  --output-fd 1)
#echo $MYVAR

eth_var=$(ifconfig | grep HWaddr | awk '{ print $1}')
echo $MYVAR1 | sudo -S ifconfig $eth_var down
sudo ifconfig $eth_var $MYVAR
sudo ifconfig $eth_var up

