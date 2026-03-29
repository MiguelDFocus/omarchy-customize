#!/bin/bash
# --- CONFIGURATION: Add the apps you want to remove here ---
APPS_TO_DELETE=(
    "Baszecamp"
    "ChatGPT"
    "Figma"
    "Google Contacts"
    "Google Messages"
    "Google Photos"
    "HEY"
    "X"
    "YouTube"
    "Zoom"
)
# -----------------------------------------------------------

APP_DIR="$HOME/.local/share/applications"
ICON_DIR="$APP_DIR/icons"

echo "Starting targeted Omarchy cleanup..."

for app in "${APPS_TO_DELETE[@]}"; do
    # Define potential paths
    DESKTOP_FILE="$APP_DIR/${app}.desktop"
    ICON_FILE="$ICON_DIR/${app}.png"

    # Check if the desktop file actually exists before trying to delete
    if [[ -f "$DESKTOP_FILE" ]]; then
        echo "Deleting $app..."
        rm -f "$DESKTOP_FILE"
        rm -f "$ICON_FILE"
    else
        echo "Skipping $app: Not found."
    fi
done

# Refresh the desktop database so the menu updates immediately
if command -v update-desktop-database >/dev/null 2>&1; then
    update-desktop-database "$APP_DIR"
fi

echo "Done!"
