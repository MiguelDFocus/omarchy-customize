#!/bin/bash

if yay -Q typora >/dev/null 2>&1; then
    yay --noconfirm -Rns typora
else
    echo "typora is not present, skipping"
fi