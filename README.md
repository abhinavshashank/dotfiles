# Arch Linux Dotfiles

Personal configuration files for **Arch Linux** on a **Framework 13 (AMD Ryzen AI 300 Series)** running **KDE Plasma 6 (KWin Wayland)**.

## Software & Tools Included
* **Terminal:** [Ghostty](https://ghostty.org/) & [Foot](https://codeberg.org/dnkl/foot)
* **Shell:** [Fish](https://fishshell.com/) + [Starship](https://starship.rs/) prompt + [Zoxide](https://github.com/ajeetdsouza/zoxide)
* **CLI Enhancements:** `eza` (`ls`), `bat` (`cat`), `btop` (monitoring), `fastfetch`
* **Audio:** PipeWire + [CAVA](https://github.com/kickerette/cava) audio visualizer
* **GUI & Theming:** KDE Plasma 6 + [Kvantum](https://github.com/tsujan/Kvantum) + [Klassy](https://github.com/paulmcauley/klassy) + Panel Colorizer
* **Plasma Widgets:** Kurve, Panel Colorizer, KdeControlStation, Advanced Weather Widget, Bing Wallpaper Tray
* **Compositor / Lock:** Hyprland & Hyprlock configurations
* **Package Backups:** Official Arch (`pkglist.txt`) & AUR (`aur-pkglist.txt`) package manifests

## Repository Structure
```
.
├── config/
│   ├── btop/
│   ├── cava/
│   ├── fastfetch/
│   ├── fish/
│   ├── foot/
│   ├── fuzzel/
│   ├── ghostty/
│   ├── gtk-3.0/
│   ├── gtk-4.0/
│   ├── hypr/
│   ├── hyprlock/
│   ├── kde/
│   ├── Kvantum/
│   └── starship.toml
├── local/
│   ├── bin/
│   └── share/plasma/plasmoids/
└── packages/
    ├── aur-pkglist.txt
    └── pkglist.txt
```

## Quick Restore
To sync these configurations to a new system:
```bash
git clone https://github.com/abhinavshashank/dotfiles.git ~/.dotfiles
cp -r ~/.dotfiles/config/* ~/.config/
cp -r ~/.dotfiles/local/share/plasma/plasmoids/* ~/.local/share/plasma/plasmoids/
cp -r ~/.dotfiles/local/bin/* ~/.local/bin/

# Reinstall official Arch packages
sudo pacman -S --needed - < ~/.dotfiles/packages/pkglist.txt
```
