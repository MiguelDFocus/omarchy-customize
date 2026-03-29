#!/bin/bash

if yay -Q pinta >/dev/null 2>&1; then
    yay --noconfirm -Rns pinta
else
    echo "pinta is not present, skipping"
fi