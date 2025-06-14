# dot-files

This repo provides setup scripts and configs for Alacritty, Zed, Helix, Zsh, and custom fonts.

## Features

- Installs **Zed**, **Alacritty**, **Helix**, and **Zsh**
- Sets Zsh as your default shell
- Copies your configs to the correct locations
- Installs user fonts

## Usage

### For Arch Linux

```
chmod +x setup-arch.sh
./setup-arch.sh
```

### For Debian/Ubuntu

```
chmod +x setup-deb.sh
./setup-deb.sh
```

> **Note:**  
> - The Arch script installs `yay` if needed for AUR support.  
> - Log out and back in for Zsh to become your default shell.  
> - Run the script from the root of your cloned repo.

## File Structure

```
alacritty/alacritty.toml
zed/settings.json
helix/config.toml
fonts/            # directory with font files
setup-arch.sh
setup-deb.sh
```