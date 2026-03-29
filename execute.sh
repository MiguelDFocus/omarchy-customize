#!/bin/sh

OMARCHY_CUSTOMIZE_ROOT="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
export OMARCHY_CUSTOMIZE_ROOT

find "$OMARCHY_CUSTOMIZE_ROOT" -type f -name "*.sh" -exec chmod +x {} +

bash $OMARCHY_CUSTOMIZE_ROOT/overrides/execute.sh
bash $OMARCHY_CUSTOMIZE_ROOT/delete-programs/execute.sh
bash $OMARCHY_CUSTOMIZE_ROOT/stow/execute.sh
