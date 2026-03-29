#!/bin/bash

if yay -Q localsend >/dev/null 2>&1; then
    yay --noconfirm -Rns localsend
else
    echo "localsend is not present, skipping"
fi