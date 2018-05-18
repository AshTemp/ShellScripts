#!/bin/bash
kernel=`uname -r`

if [[ $kernel = "3.10.0-862.el7.x86_64" ]]; then
    echo Unsupported kernel
    exit 1

fi