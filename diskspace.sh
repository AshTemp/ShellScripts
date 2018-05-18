#!/bin/bash

requiredSpace="1500"
disk="/dev/mapper/centos-root"
availableSpace=$(df -k | grep ${disk} | awk '{print $4}')

echo $availableSpace
echo $requiredSpace

if [ "$availableSpace" -lt "$requiredSpace" ]; then
    echo "Insufficient Free Space Available"
else
    echo "There is enough free space"
fi