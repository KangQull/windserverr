#!/bin/bash

# Function to display menu and get user choice
display_menu() {
    echo "Please select the Windows Server version:"
    echo "1. Windows Server 7"
    echo "2. Windows Server 2019"
    echo "3. Windows Server 2022"
    echo "4. Windows Server 2016"
    echo "5. Ubuntu 20.04 LTS"
    echo "6. Windows Server 11"
    echo "7. Windows Server 2025"
    echo "8. Windows Server 12 R2"
    echo "9. Windows 8.1"
    echo "10. Windows 7 exterpres"
    echo "11. Windows 10 lite"
    echo "12. Windows 8 pro"
    echo "14. Windows"
    echo "15. Windows"
    echo "16. Windows"
    echo "17. Windows"
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
        iso_link="https://download1638.mediafire.com/fos57z0hsh0g9NH8Ypikt3VIonswFkGlul3oCjxL2OetLqoIDDnavi1JetzxvxniF1oESJrYRFKCtiullj6o8ZrfK6YfijuHMjYRTUilM_p4ybTuXMLNTu8RddYdp7KvKASscGXmV1NyQs7P0eNCb-DbKmgYdJYJh9hZk8PMBYV_5Q/cact33s57mj9z6o/Win7ulti.iso"
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
        img_file="windows16.img"
        iso_link="https://go.microsoft.com/fwlink/p/?LinkID=2195174&clcid=0x409&culture=en-us&country=US"
        iso_file="windows16.iso"
        ;;
    5)
        # Ubuntu 20.04 LTS
        img_file="ubuntu20.img"
        iso_link="https://releases.ubuntu.com/22.04.4/ubuntu-22.04.4-live-server-amd64.iso?_gl=1*50ct44*_gcl_au*MTg4MzEwMDAwNC4xNzI1NjcyNjk1&_ga=2.76210837.1225971289.1725983090-1766161693.1725672693"
        iso_file="ubuntu20.iso"
        ;;
    6)
        # Windows Server 11
        img_file="windows11.img"
        iso_link="https://download1324.mediafire.com/q82b4g566mtgTx7q_TLPfJOtioNF91punW4XW8nDuTzm4dVknw-uXCUmvbasVb7y3OjwUr2Bz7PnXfhtg0Czdov-xZcgOLHvmn0HS4d-oH0DRZiyBDfUm8lned8X5Y_N3AANfHdDZj1EhTHjQOsP9F1ImUvK2BzhMRI031avQ_W3p8wu/aisvgelvpjj1gul/WIN11.PRO.22H2.U18.X64.%28WPE%2B%29.ISO"
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
    9)
        # Windows 8.1
        img_file="windows8.img"
        iso_link="https://dl.bobpony.com/windows/8.x/8.1/en_windows_8.1_with_update_x64_dvd_6051480.iso"
        iso_file="windows8.iso"
        ;;
    10)
        # Windows 7 eterpres
        img_file="windows7e.img"
        iso_link="https://dl.bobpony.com/windows/7/en_windows_7_enterprise_n_with_sp1_x64_dvd_u_677704.iso"
        iso_file="windows7e.iso"
        ;;
    11)
        # Windows 10 eterpres
        img_file="windows10.img"
        iso_link="https://download1322.mediafire.com/p7ogpsuhh3ugjF5fYWk3qJu2Je6_eHqBfJ6YMrfHMcGxBg46MPiCcxeKSRe6pCJ2Vi9_xXD4gaf18IYbVW3ZG9QnOEIYXG3QSJTSzpcU6_Ccw4f3zfspvgIr6QUHwVNVO2GIKm3p6h4eBIBKBnlIQ_fHD1m92WaI_RtiXpeAfIuCQUao/4q64m77dxys54kf/WIN10.PRO.AIO.U18.X64.%28WPE%29.ISO"
        iso_file="windows10.iso"
        ;;
    12)
        # Windows 8 pro
        img_file="windows8p.img"
        iso_link="https://files.dog/MSDN/Windows%208/en-gb_windows_8_pro_n_vl_x64_dvd_918679.iso"
        iso_file="windows8p.iso"
        ;;
    13)
        # Windows Server 2012 R2
        img_file="windows12.img"
        iso_link="https://go.microsoft.com/fwlink/p/?LinkID=2195443&clcid=0x409&culture=en-us&country=US"
        iso_file="windows12.iso"
        ;;
    14)
        # Windows Server 2012 R2
        img_file="windows12.img"
        iso_link="https://go.microsoft.com/fwlink/p/?LinkID=2195443&clcid=0x409&culture=en-us&country=US"
        iso_file="windows12.iso"
        ;;
    15)
        # Windows Server 2012 R2
        img_file="windows12.img"
        iso_link="https://go.microsoft.com/fwlink/p/?LinkID=2195443&clcid=0x409&culture=en-us&country=US"
        iso_file="windows12.iso"
        ;;
    16)
        # Windows Server 2012 R2
        img_file="windows12.img"
        iso_link="https://go.microsoft.com/fwlink/p/?LinkID=2195443&clcid=0x409&culture=en-us&country=US"
        iso_file="windows12.iso"
        ;;
    17)
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
wget -O virtio-win.iso 'https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.262-2/virtio-win.iso'

echo "Virtio driver ISO downloaded successfully."

# Download Windows ISO with the chosen name
wget -O "$iso_file" "$iso_link"

echo "Windows ISO downloaded successfully."
