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
### 1. Open Terminal

On most Linux desktop environments, you can open the terminal using:
```
CTRL + ALT + T
```
You can also open it from your application menu by searching for Terminal.

### 2. Download the project

Clone the repository:
```
git clone https://github.com/YOUR_USERNAME/easy-linux.git
```
Enter the project directory:
```
cd easy-linux
```
### 3. Make the script executable

Run:
```
chmod +x easy-linux.sh
```
### 4. Run the script

Start the program with:
```
sudo ./easy-linux.sh
```
The script will automatically detect your Linux distribution and display a menu with available options.

## Project Goal

The goal of this project is to provide a simple cross-distribution package management utility written in Bash that makes it easier to install commonly used software and perform basic maintenance tasks from a single menu.

## License

MIT License
