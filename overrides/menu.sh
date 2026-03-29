show_main_menu() {
  go_to_menu "$(menu "Go" "󰧑  Learn\n󱓞  Trigger\n  Style\n  Setup\n󰉉  Install\n󰭌  Remove\n  Update\n  System")"
}

show_trigger_menu() {
  case $(menu "Trigger" "  Capture\n  Share") in
  *Capture*) show_capture_menu ;;
  *Share*) show_share_menu ;;
  *) show_main_menu ;;
  esac
}

show_style_menu() {
  case $(menu "Style" "󰸌  Theme\n  Font\n  Background") in
  *Theme*) show_theme_menu ;;
  *Font*) show_font_menu ;;
  *Background*) show_background_menu ;;
  *) show_main_menu ;;
  esac
}

show_install_menu() {
  case $(menu "Install" "󰣇  Package\n󰣇  AUR\n  Web App\n  TUI\n  Style\n󰵮  Development\n  Editor\n  Terminal\n󱚤  AI") in
  *Package*) terminal omarchy-pkg-install ;;
  *AUR*) terminal omarchy-pkg-aur-install ;;
  *Web*) present_terminal omarchy-webapp-install ;;
  *TUI*) present_terminal omarchy-tui-install ;;
  *Style*) show_install_style_menu ;;
  *Development*) show_install_development_menu ;;
  *Editor*) show_install_editor_menu ;;
  *Terminal*) show_install_terminal_menu ;;
  *AI*) show_install_ai_menu ;;
  *) show_main_menu ;;
  esac
}

show_remove_menu() {
  case $(menu "Remove" "󰣇  Package\n  Web App\n  TUI\n󰵮  Development\n󰏓  Preinstalls\n󰸌  Theme\n󰈷  Fingerprint") in
  *Package*) terminal omarchy-pkg-remove ;;
  *Web*) present_terminal omarchy-webapp-remove ;;
  *TUI*) present_terminal omarchy-tui-remove ;;
  *Development*) show_remove_development_menu ;;
  *Preinstalls*) present_terminal omarchy-remove-preinstalls ;;
  *Theme*) present_terminal omarchy-theme-remove ;;
  *Fingerprint*) present_terminal "omarchy-setup-fingerprint --remove" ;;
  *) show_main_menu ;;
  esac
}
