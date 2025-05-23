#!/usr/bin/env sh

if [ "$2" = 'pre-start' ]
then
    echo '' > "/sys/bus/pci/devices/0000:$(lspci -mm -d 8086:56a0 | head -1 | cut -d' ' -f1)/reset_method"
fi
