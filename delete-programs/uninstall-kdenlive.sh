#!/bin/bash

if yay -Q kdenlive >/dev/null 2>&1; then
    yay --noconfirm -Rns kdenlive
else
    echo "kdenlive is not present, skipping"
fi