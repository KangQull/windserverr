#!/bin/bash

# Function to display menu and get user choice
display_menu() {
    echo "Please select the Windows Server version:"
    echo "1. Windows Server 7 home"
    echo "2. Windows Server 2019"
    echo "3. Windows Server 2022"
    echo "4. Windows Server 2016"
    echo "5. Ubuntu 20.04 LTS"
    echo "6. Windows Server 11 ltsc"
    echo "7. Windows Server 2025"
    echo "8. Windows Server 12 R2"
    echo "9. Windows 8.1"
    echo "10. Windows 7 exterpres"
    echo "11. Windows 10 lite"
    echo "12. Windows 8 pro"
    echo "13. Windows 11 ori"
    echo "14. Windows X 10p"
    echo "15. Windows X 11p"
    echo "16. Windows 10 GSpectre"
    echo "17. Windows XP"
    echo "18. Windows VISTA"
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
        iso_link="https://kgncwg.bn.files.1drv.com/y4mToQDALHZT52rpHRg2gQ4PtpZEIZkQp5NRS6LRxkyZgbc1j93UW5f2bV6fc2aMEBdGFKgu-P52LXvzyGPQGgP8HjQQEt-o_YGUtEp_wAivK60usJ5fF8vqQmJiYuLJIE5H7j5ti7O-0sibJH1Cc5SEnJ5xC83W1GxWpVh_gfetnkshNFIwoojynoLmImAufxtNYVR8RtxQ0offiPOVbjnOw"
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
        img_file="windows11lt.img"
        iso_link="http://etdotz.my.id/windows/Windows.11.LTSC.24H2.26100.1457.x64.Agustus.2024.iso"
        iso_file="windows11lt.iso"
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
        iso_link="https://dl.bobpony.com/windows/11/en-us_windows_11_23h2_x64.iso"
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
        iso_link="https://ul4frq.bn.files.1drv.com/y4mCMlSsbkgzISJicgpavg0y0JpGN13D2gWtp8n4QwTsPsIv_AexflFpsn0atKz4LVeYNFfqP-L-m41hiJTTPuW19TMTk06omHpfLxy0lYc0WkF_auorkDGIyo8_ovQsgn2cNH90lHgOWH6KQEt_pMPR3YEVHnhThafYog_vof8J6FCMTbFwjo2DDG_klW_XdljHu4aE6W9qC69BAT3gvZeLA"
        iso_file="windows11x.iso"
        ;;
    16)
        # Windows 10 Gspectre
        img_file="windows10g.img"
        iso_link="https://huomoa.bn.files.1drv.com/y4mtGBM-s1PbBztI5PmktheWzxjlRI7fOu3zQMgzkjgc3lCKFy565T9Za_XoMVvhxx0sdZf2NtXAaLotyNmHLun6mCpYDJtTlpx2UjOvENJUvABujulL1JeExfPy0Cowgdo-d09ql__xa-dq6YHmxWPVTyR317c3SxUiTUeZR2CaLL8pAZcN9ZLoNKjRcdjpQvodqWLN3mPlbv1jIOWrIFT_g"
        iso_file="windows10g.iso"
        ;;
    17)
        # Windows XP
        img_file="windowsxp.img"
        iso_link="https://kgolza.bn.files.1drv.com/y4mC-CSQVVATJnaYBM13IP0vUES5OnQEN6MfVMjTywuYm_enrlDHR-DOv02P0zya6sFjMJfggcTkjy0Sq40B-_lIGDZBySDTls2go9xods4hfgtZEwLirotQzKYAxyBMw36ATqjzUBknd7CDPhRClVNHDSfdyTxaKLXQLxtekhKQpT2InBMuiLKzeCsC42hzKWRudT8PgoeRdAr2G0lx6SVkg"
        iso_file="windowsxp.iso"
        ;;
    18)
        # Windows VISTA
        img_file="windowsv.img"
        iso_link="https://9e7ceg.bn.files.1drv.com/y4mVw2srZ5Y-KtBnsG_JIQ7hcLHZFTaD7DSbEcL5fke3Mc55YRJr-AuVNkTTrtYOTT6ABhZN5egNmj-yQFnY20rGQJVAMsG2eOllWO5I0OMOy6IXE2lkqx0BXMi4IuKSF_AK34eGUakug0oCbwd2-6QOqAa-Ns9_7gssN3Z6qHs3vKOcoAYzbFdrBIUyHWYBEC_HHgAxiL_xnKxQKxQFOJeOQ"
        iso_file="windowsv.iso"
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
wget -O virtio-win.iso 'https://github.com/qemus/virtiso/releases/download/v0.1.262-2/virtio-win-0.1.262.iso'

echo "Virtio driver ISO downloaded successfully."

# Download Windows ISO with the chosen name
wget -O "$iso_file" "$iso_link"

echo "Windows ISO downloaded successfully."
