# AmneziaVPN Auto Installer for Linux

![Bash](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

This bash script automates the installation of AmneziaVPN client on Linux systems. It handles downloading the latest release, installing dependencies, extracting archives, and launching the installer.

## Features
- Automatic download of the latest AmneziaVPN release
- Dependency resolution
- Progress tracking with user-friendly messages
- Error handling at each step
- Version-independent (automatically adapts to new releases)

## Prerequisites
- Linux distribution (tested on Ubuntu/Debian-based systems). [Other distributions](https://docs.amnezia.org/documentation/installing-app-on-linux/) 
- Internet connection
- `sudo` privileges
- Basic terminal knowledge

## Installation & Usage

### Step-by-Step Guide
1. **Download the script**:
   ```bash
   wget https://raw.githubusercontent.com/<your-username>/<your-repo>/main/amnezia_vpn_download.sh

2. **Make it executable**:
   ```bash
   chmod +x amnezia_vpn_download.sh

3. **Run the installer**:
   ```bash
   sudo ./amnezia_vpn_download.sh

### What Happens Next
The script will:
- Install required system dependencies
- Download the latest AmneziaVPN package
- Extract the downloaded archives
- Launch the graphical installer
- Provide progress updates throughout the process

### Troubleshooting
If you encounter issues:
- Permission denied: Ensure you used sudo
- File not found: Check your internet connection
- Extraction errors: Verify you have enough disk space
- Missing dependencies: Run manually:
  ```bash
  sudo apt install libxcb-xinerama0 libxcb-cursor0 p7zip-full -y

### Safety Notes
- Always review scripts from the internet before running
- This script requires root privileges for installation
- Official AmneziaVPN releases: [github.com/amnezia-vpn](https://github.com/amnezia-vpn/amnezia-client/releases)
