#!/bin/bash

# Function to display menu and get user choice
display_menu() {
    echo "Please select the Windows Server version:"
    echo "1. Windows Server 7"
    echo "2. Windows Server 2019"
    echo "3. Windows Server 2022"
    echo "4. Windows Server 2016"
    echo "5. Windows Server 1064"
    echo "6. Windows Server 11 server"
    echo "7. Windows Server 2025"
    echo "8. Windows Server 12 R2"
    read -p "Enter your choice: " choice
}

# Update package repositories and upgrade existing packages
apt-get update && apt-get upgrade -y

# Install QEMU and its utilities
apt-get install qemu -y
apt install qemu-utils -y
apt install qemu-system-64-xen -y
apt install qemu-system-64 -y
apt install qemu-kvm -y

echo "QEMU installation completed successfully."

# Get user choice
display_menu

case $choice in
    1)
        # Windows Server 7
        img_file="windows7.img"
        iso_link="http://167.71.206.234/6758.0.080724-1015_amd64fre_Server_en-us-GB1SXFRE_EN_DVD.iso"
        iso_file="windows7.iso"
        ;;
    2)
        # Windows Server 2019
        img_file="windows2019.img"
        iso_link="https://go.microsoft.com/fwlink/p/?LinkID=2195167&clcid=0x409&culture=en-us&country=US"
        iso_file="windows2019.iso"
        ;;
    3)
        # Windows Server 2022
        img_file="windows2022.img"
        iso_link="https://go.microsoft.com/fwlink/p/?LinkID=2195280&clcid=0x409&culture=en-us&country=US"
        iso_file="windows2022.iso"
        ;;
    4)
        # Windows Server 2016
        img_file="windows1032.img"
        iso_link="https://go.microsoft.com/fwlink/p/?LinkID=2195174&clcid=0x409&culture=en-us&country=US"
        iso_file="windows1032.iso"
        ;;
    5)
        # Windows Server 10 64
        img_file="windows1064.img"
        iso_link="https://software.download.prss.microsoft.com/dbazure/Win10_22H2_English_x64v1.iso?t=dec9a883-4ccc-4c04-8a61-e74281fcf502&P1=1725865362&P2=601&P3=2&P4=oByLA1ECLPczPM4NurCSr7VTNNt610Pkj6CrdPRPPmvEGjLb6w4556qOj%2bZhsxeX0AHQKwU%2bLCFHpgpWjtF8lCg1qGz93MKZ%2fqcaaK%2f30M5%2fk7d1NNQX9f8LQaCGDpl%2b7REWZ8X6dHFOyawqql9P8%2bxO6OEoZosn%2faKOa%2bBjcW3pY1IMWmXfENxhRkohCnhmUzT8NnxTgD1cJkzQiW2J24zQ%2bhBNowJ1VWQ08sH3yHZR2bN94fr%2fPWPfpr6S4bUzN3xSOXOeP2Vkfxon3KxYg%2b5UFBk9sBLFmo5m32KbY07RChNlX2ffSi2AbI2jKUrt5oQxHJH%2bTy0sEnCFTRShvA%3d%3d"
        iso_file="windows1064.iso"
        ;;
    6)
        # Windows Server 11 server
        img_file="windows11.img"
        iso_link="https://archive.org/download/windows-home-server-2011_202102/Windows%20Home%20Server%202011.iso"
        iso_file="windows11.iso"
        ;;
    7)
        # Windows Server 2025
        img_file="windows25.img"
        iso_link="http://167.71.206.234/windows25.iso"
        iso_file="windows25.iso"
        ;;
    8)
        # Windows Server 2012 R2
        img_file="windows12.img"
        iso_link="https://go.microsoft.com/fwlink/p/?LinkID=2195443&clcid=0x409&culture=en-us&country=US"
        iso_file="windows12.iso"
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

echo "Selected Windows Server version: $img_file"

# Create a raw image file with the chosen name
qemu-img create -f raw "$img_file" 30G

echo "Image file $img_file created successfully."

# Download Virtio driver ISO
wget -O virtio-win.iso 'https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.262-2/virtio-win-0.1.262.iso'

echo "Virtio driver ISO downloaded successfully."

# Download Windows ISO with the chosen name
wget -O "$iso_file" "$iso_link"

echo "Windows ISO downloaded successfully."
