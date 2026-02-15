# 🍎 Fedora-to-macOS Ultimate Transformation
**The most automated way to get the Apple look on Fedora Linux.**

![Fedora Support](https://img.shields.io/badge/Fedora-Workstation-blue?style=for-the-badge&logo=fedora)
![GNOME](https://img.shields.io/badge/Desktop-GNOME-blue?style=for-the-badge&logo=gnome)
![YouTube](https://img.shields.io/badge/Subscribe-NEXAGEEK-red?style=for-the-badge&logo=youtube)

---

## 📺 Video Tutorial
Don't want to get lost? Watch the step-by-step setup guide here:
👉 [**NEXAGEEK YouTube Channel**](https://www.youtube.com/@NEXAGEEK)

---

## ⚠️ Disclaimer
**Use these scripts at your own risk.** - This project is provided for educational and customization purposes. 
- **NEXAGEEK** is not responsible for any system modifications, broken packages, or data loss.
- Always perform a backup before running scripts that modify system UI settings.
- Credits to [vinceliuice](https://github.com/vinceliuice) for the amazing WhiteSur theme ecosystem.

---

## 📂 Project Contents

This repository contains two main scripts:
1. `nexageek-mac-themes.sh`: Installs the WhiteSur GTK theme, Icon set, moves window buttons to the left, and fixes Flatpak permissions.
2. `nexageek-mac-dock.sh`: Installs the required GNOME extensions and configures the bottom dock/shell theme.

---
## 1. Clone the Repository
##Open your terminal and run:
```bash
git clone [https://github.com/AbDuus/Fedora-macOS-NEXAGEEK/](https://github.com/AbDuus/Fedora-macOS-NEXAGEEK/)
cd Fedora-macOS-NEXAGEEK
chmod +x *.sh

## 2. Run the Transformation Scripts
##Run both scripts in order to install the themes and the dock extensions:
./nexageek-mac-themes.sh
./nexageek-mac-dock.sh

## 3. Restart your Session (Mandatory)
##Fedora uses Wayland, so you must log out to initialize the new extensions. Use this command to log out immediately:
loginctl terminate-user $(whoami)

## 4. Re-run the Dock Script (Final Step)
##After logging back in, you must re-run the dock script to apply the Shell theme and finalize the dock layout:
cd Fedora-macOS-NEXAGEEK
./nexageek-mac-dock.sh



