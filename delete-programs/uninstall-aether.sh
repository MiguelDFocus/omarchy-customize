#!/bin/bash

if yay -Q aether >/dev/null 2>&1; then
    yay --noconfirm -Rns aether
else
    echo "aether is not present, skipping"
fi