#!/bin/bash

if yay -Q xournalpp >/dev/null 2>&1; then
    yay --noconfirm -Rns xournalpp
else
    echo "xournalpp is not present, skipping"
fi