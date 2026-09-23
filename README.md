# Easy Linux

A simple Bash script for managing packages and performing basic system maintenance on multiple Linux distributions.

## Features

* Detects the current Linux distribution automatically
* Supports:

  * Debian / Ubuntu
  * Fedora / RHEL / CentOS
  * Arch Linux / Manjaro / CachyOS
* Install common software categories:

  * Development tools
  * Network tools
  * Multimedia tools
  * Office tools
  * Game tools
  * Spotify (via Flatpak)
  * Wallpaper tools
* Update and upgrade the system
* Remove unused packages
* Clean package cache
* Search for files from the terminal

## Included Software Categories

### Development Tools

GCC, G++, Make, CMake, Ninja, Git, Autotools and other tools required for software development.

### Network Tools

Ping utilities, DNS tools, Nmap, Tcpdump, SSH tools, Netcat, Socat and more.

### Multimedia Tools

FFmpeg, VLC, MPV, ImageMagick, SoX and audio codecs.

### Office Tools

LibreOffice with Polish language support and dictionaries.

### Game Tools

Steam, Lutris, Wine, MangoHud and GameMode.

### Spotify

Installs the Spotify Flatpak package and configures Flathub if needed.

### Wallpaper Tools

Feh, Nitrogen and Variety.

## Usage

```bash
sudo ./easy-linux.sh
```

## Project Goal

The goal of this project is to provide a simple cross-distribution package management utility written in Bash that makes it easier to install commonly used software and perform basic maintenance tasks from a single menu.

## License

MIT License
