#!/bin/bash

# Function to display menu and get user choice
display_menu() {
    echo "Please select the Windows Server version:"
    echo "1. Windows Server 7"
    echo "2. Windows Server 2019"
    echo "3. Windows Server 2022"
    echo "4. Windows Server 2016"
    echo "5. Ubuntu 20.04 LTS"
    echo "6. Windows Server 11 spectre"
    echo "7. Windows Server 2025"
    echo "8. Windows Server 12 R2"
    echo "9. Windows 8.1"
    echo "10. Windows 7 exterpres"
    echo "11. Windows 10 lite"
    echo "12. Windows 8 pro"
    echo "13. Windows 11 ori"
    echo "14. Windows X 10p"
    echo "15. Windows X 11p"
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
        iso_link="https://hurwtg.bn.files.1drv.com/y4mTEP_uQ46DejA7zpa6_hKyqscouzJBnBIiaHN4SYq9Glsjq8TIdty2JCrojobEhKLEtY7yGwO-rWe8sXQoabsxIfb6oDeDd6Bwq0e_M46HATz12CiXGcFf5ILfMdTBuTnxtL25Var4haquCTUJo8yLOr6b_9lPogARqSua8rgGC3YvrhaEvmaZsR2s-xkymeHxoWFGntzIZCOYZh2X9At8w"
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
        # Windows 11 Ori
        img_file="windows11o.img"
        iso_link="https://dw.uptodown.net/dwn/f24hxBdOwETVh-G7PDQEsTsDRJd1fwaN7-18HRTT3pwRc-hNySv0dDvxqLOvrvg_TVju56w0L9-uWU9gJrip1Fm3uX6x9RQfSaYvyPaoztKKnfK61giip03BzN1wPRda/Np42oo2cwoIlMcz9nR3elYboWXM36yhU3GEMv86amy-6FHYjnLW6vjFjMaYFmvxtXGH-axT-KDZBn9JnThWddK4jDr1Y4545_f2C1-S2zu4XWaOe4l42_1Jo0c3yCodA/MwMevOt-L1JIctdesITg9S36n9Nn0kHhTWwtIKYq2ghqBElbVHne0Jrjp0Ft15N7OprWOLgRtyABcvCTHxq0jQ==/windows-11-23h2.iso"
        iso_file="windows11o.iso"
        ;;
    14)
        # Windows X 10p
        img_file="windows10x.img"
        iso_link="https://ul5otw.bn.files.1drv.com/y4makayrxygzT7a4OduYecFmghiqd4wL5RJjXPpf9A6-uqK_fP5ME2TCF4lufM0iQRg7AXOUpQb91h7ZqxlCo6UcHLQoZ2kHMHaUlS7wspm36qkw7Kmy9B90kFaXXvyLF8uXer6fgWV7UG6RQYVsTp9fQeL9k9wshM7QXWiOCE9uHLwmRaDO8fhR9sv_SI_r5ovdouz7Dq2UPG6yPjRa-QBtQ"
        iso_file="windows10x.iso"
        ;;
    15)
        # Windows X 11p
        img_file="windows11x.img"
        iso_link="https://ul4frq.bn.files.1drv.com/y4mb-YTRfdwaH9BCI2nJ1E1X4qh0kj700oWVD8dAltRYcYtpBL2cch6d4oVBEwgA2jifB3EwfzPx9i6B47LR-9mwEQeQYqNUIQWhuXAou0pyXSKjjpTAvc9WUTmPsnWQn9JMsG1zrBMQY9DjmKf-jAhv4whgHaOONdQHYQm88mvj4VoXFYxYAGADHajUzQbsAgmrr8kYoQo6aZ6JwW7sO_WTw"
        iso_file="windows11x.iso"
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
