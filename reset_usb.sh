#!/bin/bash

cd /sys/bus/pci/drivers/ehci-pci/

echo -n "0000:00:1a.0" > unbind

echo -n "0000:00:1a.0" > bind
