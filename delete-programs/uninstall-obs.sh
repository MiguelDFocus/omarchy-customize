#!/bin/bash

if yay -Q obs-studio >/dev/null 2>&1; then
    yay --noconfirm -Rns obs-studio
else
    echo "obs-studio is not present, skipping"
fi