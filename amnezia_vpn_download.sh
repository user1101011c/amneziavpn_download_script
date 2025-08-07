#!/bin/bash


sudo apt install libxcb-xinerama0 libxcb-cursor0 p7zip-full -y
wget https://github.com/amnezia-vpn/amnezia-client/releases/download/4.8.8.3/AmneziaVPN_4.8.8.3_linux_x64.tar.zip

archive=$(ls -t AmneziaVPN_*_linux_x64.tar.zip 2>/dev/null | head -n 1)

if [ -f "$archive" ]; then
    echo "Let's go unpacked..."
    sleep 3
    7z x "$archive"
    echo "OK"
    
    echo "Unpacked next..."
    sleep 3
    tar_file=$(ls -t AmneziaVPN_*.tar 2>/dev/null | head -n 1)
    if [ -f "$tar_file" ]; then
        tar -xf "$tar_file"
        echo "OK"
        
        sleep 1
        echo "Starting the installation of the bin file..."
        installer=$(find . -name '*.bin' -executable -print -quit)
        if [ -x "$installer" ]; then
            sudo ./"$installer"
        else
            echo "ERROR: INSTALLER .BIN NOT FOUND OR NOT EXECUTABLE"
            exit 1
        fi
    else
        echo "ERROR: TAR ARCHIVE NOT FOUND"
        exit 1
    fi
else
    echo "ERROR: ZIP FILE NOT FOUND"
    exit 1
fi
