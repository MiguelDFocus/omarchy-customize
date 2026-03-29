#!/bin/bash

cd "$OMARCHY_CUSTOMIZE_ROOT/dotfiles"

PACKAGES=(
    "waybar"
    "nvim"
)

if ! command -v stow >/dev/null 2>&1;
then
    yay --answerdiff None --answerclean None --needed --noconfirm -S stow
fi

echo "Stowing dotfiles..."

for pkg in "${PACKAGES[@]}"; do
    # -v: verbose, -R: recursive/restow, -t: target (Home)
    stow -v -R -t "$HOME" "$pkg"
done

echo "Done! Your configs are now symlinked."
