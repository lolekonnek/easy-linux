#!/bin/bash

# ============================================================
# Linux Package Manager
# Simple package management and system maintenance script
# ============================================================

# Check if the script is running with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Load information about the current Linux distribution
source /etc/os-release

# Display detected distribution
echo "Detected Linux distribution: $ID"

# ============================================================
# MAIN MENU
# ============================================================

echo "What do you want to do?"
echo "1) Install common packages"
echo "2) Update system"
echo "3) Upgrade system"
echo "4) Remove unused packages"
echo "5) Clean package cache"
echo "6) Find files"
echo "7) Exit"
read -p "Enter your choice [1-7]: " choice


# ============================================================
# PACKAGE INSTALLATION MENU
# ============================================================

if [ "$choice" -eq 1 ]; then
   echo "What packages do you want to install?"
   echo "1) Development tools (gcc, make, etc.)"
   echo "2) Network tools (curl, wget, etc.)"
    echo "3) Multimedia tools (vlc, ffmpeg, etc.)"
    echo "4) Office tools (libreoffice, etc.)"
    echo "5) Game tools (steam, lutris, etc.)"
    echo "6) Spotify"
    echo "7) Wallpaper tools (feh, nitrogen, etc.)"
    read -p "Enter your choice [1-7]: " packages
    
# ========================================================
# DEVELOPMENT TOOLS
# ========================================================

    if [ "$packages" -eq 1 ]; then
        if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
            apt install -y \
            build-essential \
            cmake \
            pkg-config \
            git \
            curl \
            wget \
            autoconf \
            automake \
            libtool \
            ninja-build 
        elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
            dnf install -y \
            gcc \
            gcc-c++ \
            make \
            cmake \
            ninja-build \
            pkgconf-pkg-config \
            git \
            curl \
            wget \
            autoconf \
            automake \
            libtool
        elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
            pacman -S --needed \
            base-devel \
            cmake \
            ninja \
            pkgconf \
            git \
            curl \
            wget \
            autoconf \
            automake \
            libtool
        else
            echo "Unsupported distribution"
        fi

# ========================================================
# NETWORK TOOLS
# ========================================================

    elif  [ "$packages" -eq 2 ]; then
        if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
            apt install -y \
            iproute2 \
            iputils-ping \
            dnsutils \
            net-tools \
            traceroute \
            nmap \
            tcpdump \
            netcat-openbsd \
            socat \
            openssh-client \
            openssh-server
        elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
            dnf install -y \
            iproute \
            iputils \
            bind-utils \
            net-tools \
            traceroute \
            nmap \
            tcpdump \
            nmap-ncat \
            socat \
            openssh-clients \
            openssh-server
        elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
            pacman -S --needed \
            iproute2 \
            iputils \
            bind \
            net-tools \
            traceroute \
            nmap \
            tcpdump \
            openbsd-netcat \
            socat \
            openssh
        else
            echo "Unsupported distribution"
        fi

# ========================================================
# MULTIMEDIA TOOLS
# ========================================================

        
    elif  [ "$packages" -eq 3 ]; then
        if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
            apt install -y \
            ffmpeg \
            vlc \
            mpv \
            imagemagick \
            sox \
            opus-tools \
            flac \
            lame
        elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
            dnf install -y \
            ffmpeg \
            vlc \
            mpv \
            ImageMagick \
            sox \
            opus-tools \
            flac \
            lame
        elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
            pacman -S --needed \
            ffmpeg \
            vlc \
            mpv \
            imagemagick \
            sox \
            opus-tools \
            flac \
            lame
        else
            echo "Unsupported distribution"
        fi
# ========================================================
# OFFICE TOOLS
# ========================================================
        
    elif  [ "$packages" -eq 4 ]; then
        if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
            apt install -y \
            libreoffice \
            libreoffice-l10n-pl \
            hunspell-pl \
            hyphen-pl
        elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
            dnf install -y \
            libreoffice \
            libreoffice-langpack-pl \
            hunspell-pl \
            hyphen-pl
        elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
            pacman -S --needed \
            libreoffice-fresh \
            libreoffice-fresh-pl \
            hunspell-pl \
            hyphen-pl
        else
            echo "Unsupported distribution"
        fi

# ========================================================
# GAME TOOLS
# ========================================================
        
    elif  [ "$packages" -eq 5 ]; then
        if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
            apt install -y \
            steam-installer \
            lutris \
            gamemode \
            mangohud \
            wine
        elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
            echo -e "\e[1;31mSteam may require RPM Fusion on Fedora!!!\e[0m"
            dnf install -y \
            steam \
            lutris \
            gamemode \
            mangohud \
            wine
        elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
            pacman -S --needed \
            steam \
            lutris \
            gamemode \
            mangohud \
            wine
        else
            echo "Unsupported distribution"
        fi

# ========================================================
# SPOTIFY
# ========================================================
        
    elif  [ "$packages" -eq 6 ]; then
        if  command -v flatpak >/dev/null 2>&1; then
            flatpak install -y flathub com.spotify.Client
        else
            echo 'flatpak is not installed.'
            read -p "Do you want install Flatpak? (y/n): " check
            if [ "$check" == "y" ]; then
                if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
                    apt update
                    apt install -y flatpak
                elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
                    dnf install -y flatpak
                elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
                    pacman -S --needed flatpak
                else
                    echo "Unsupported distribution"
                fi
            else
                exit 1
            fi

            if ! flatpak remotes | grep -q "^flathub"; then
                flatpak remote-add --if-not-exists \
                    flathub https://dl.flathub.org/repo/flathub.flatpakrepo
            fi

            flatpak install -y flathub com.spotify.Client
        
        fi

# ========================================================
# WALLPAPER TOOLS
# ========================================================
    
    elif  [ "$packages" -eq 7 ]; then
        if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
            apt install -y \
            feh \
            nitrogen \
            variety
        elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
            dnf install -y \
            feh \
            nitrogen \
            variety
        elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
            pacman -S --needed \
            feh \
            nitrogen \
            variety
        else
            echo "Unsupported distribution"
        fi
    else
        echo "Invalid choice"
        exit 1   
    fi

# ============================================================
# SYSTEM UPDATE
# ============================================================

elif [ "$choice" -eq 2 ]; then
  if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
    apt update && sudo apt upgrade -y
  elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
    dnf update -y
  elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
    pacman -Syu --noconfirm
  else
    echo "Unsupported distribution"
  fi

# ============================================================
# SYSTEM UPGRADE
# ============================================================

elif [ "$choice" -eq 3 ]; then
  if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
    apt full-upgrade -y
  elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
    dnf upgrade --refresh -y
  elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
    pacman -Syu --noconfirm
  else
    echo "Unsupported distribution"
  fi

# ============================================================
# REMOVE UNUSED PACKAGES
# ============================================================


elif [ "$choice" -eq 4 ]; then
  if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
    apt autoremove -y
  elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
    dnf autoremove -y
  elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
    orphans=$(pacman -Qdtq)

    if [ -n "$orphans" ]; then
    pacman -Rns $orphans --noconfirm
    else
        echo "No orphan packages found"
    fi
else
    echo "Unsupported distribution"
  fi

# ============================================================
# CLEAN PACKAGE CACHE
# ============================================================
  
elif [ "$choice" -eq 5 ]; then
  if [[ "$ID" == "ubuntu" || "$ID" == "debian" ]]; then
    apt clean
  elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
    dnf clean all
  elif [[ "$ID" == "arch" || "$ID" == "manjaro" || "$ID" == "antergos" || "$ID" == "cachyos" ]]; then
    pacman -Scc --noconfirm
  else
    echo "Unsupported distribution"
  fi

# ============================================================
# FILE SEARCH
# ============================================================

elif [ "$choice" -eq 6 ]; then
  read -p "Enter the filename to search for: " filename
  find / -name "$filename" 2>/dev/null


# ============================================================
# EXIT
# ============================================================
  
elif [ "$choice" -eq 7 ]; then
  echo "Exiting..."
  exit 0
else
  echo "Invalid choice"
  exit 1
fi 

