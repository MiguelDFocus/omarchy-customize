#!/bin/bash

if yay -Q signal-desktop >/dev/null 2>&1; then
    yay --noconfirm -Rns signal-desktop
else
    echo "signal-desktop is not present, skipping"
fi