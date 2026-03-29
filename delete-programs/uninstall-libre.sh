#!/bin/bash

if yay -Q libreoffice-fresh >/dev/null 2>&1; then
    yay --noconfirm -Rns libreoffice-fresh
else
    echo "libreoffice-fresh is not present, skipping"
fi