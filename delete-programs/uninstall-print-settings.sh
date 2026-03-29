#!/bin/bash

if yay -Q systemd-config-printer >/dev/null 2>&1; then
    yay --noconfirm -Rns systemd-config-printer
else
    echo "systemd-config-printer is not present, skipping"
fi