#!/bin/bash

# Function to display menu and get user choice
display_menu() {
    echo "Please select the Windows Server version:"
    echo "1. Windows Server 7"
    echo "2. Windows Server 2019"
    echo "3. Windows Server 2022"
    echo "4. Windows Server 1032"
    echo "5. Windows Server 1064"
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
        iso_link="http://167.71.206.234/windows764.iso"
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
        # Windows Server 10 32
        img_file="windows1032.img"
        iso_link="https://software.download.prss.microsoft.com/dbazure/Win10_22H2_English_x32v1.iso?t=1502fbae-53b9-45e5-b7a4-10d772dcf375&P1=1725865167&P2=601&P3=2&P4=PJGU8qkfkCbEOSLLxYgyR8vgKBEi9NBxcfp%2bNjRKAWOIar%2bQp4nfZU75%2fdLciYbTjvNHkHR9CH7ecYB0HffRuAR5qOLCoiOMXOq%2f02hiVoBAVH17tKxXgDdyULz5nkBWarC05Z1PQlzd7sjcuqzYd4wgZjO3ngGRz9lUiCwtsE2%2bbqmoU1rUjUZDbaxA%2byOGwPz3ii5avUT4v63yDFUecLk3kOu7OHgfcKlou%2bYMXHyjokaP6lzrT40wPMN%2b3XE6eVgUmtH234zFC2z54aJQ9SMSYR5I58SZKWQbEemwqsjXVzuOHBoZHfL%2fOjcZ9TuzbNmmiliifOVBbCiFB0eIUg%3d%3d"
        iso_file="windows1032.iso"
        ;;
    5)
        # Windows Server 10 64
        img_file="windows1064.img"
        iso_link="https://software.download.prss.microsoft.com/dbazure/Win10_22H2_English_x64v1.iso?t=dec9a883-4ccc-4c04-8a61-e74281fcf502&P1=1725865362&P2=601&P3=2&P4=oByLA1ECLPczPM4NurCSr7VTNNt610Pkj6CrdPRPPmvEGjLb6w4556qOj%2bZhsxeX0AHQKwU%2bLCFHpgpWjtF8lCg1qGz93MKZ%2fqcaaK%2f30M5%2fk7d1NNQX9f8LQaCGDpl%2b7REWZ8X6dHFOyawqql9P8%2bxO6OEoZosn%2faKOa%2bBjcW3pY1IMWmXfENxhRkohCnhmUzT8NnxTgD1cJkzQiW2J24zQ%2bhBNowJ1VWQ08sH3yHZR2bN94fr%2fPWPfpr6S4bUzN3xSOXOeP2Vkfxon3KxYg%2b5UFBk9sBLFmo5m32KbY07RChNlX2ffSi2AbI2jKUrt5oQxHJH%2bTy0sEnCFTRShvA%3d%3d"
        iso_file="windows1064.iso"
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
wget -O virtio-win.iso 'https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.173-1/virtio-win-0.1.173.iso'

echo "Virtio driver ISO downloaded successfully."

# Download Windows ISO with the chosen name
wget -O "$iso_file" "$iso_link"

echo "Windows ISO downloaded successfully."
