#!/bin/bash

# =================================================================
# 🚀 Fedora macOS Transformation Script by NEXAGEEK
# 📺 YouTube: https://www.youtube.com/@NEXAGEEK
# 🔗 GitHub: [Your Repo Link Here]
# =================================================================

# --- [ DISCLAIMER ] ---
# ⚠️ This script is provided "as is" without any warranty.
# ⚠️ NEXAGEEK is NOT responsible for any system modifications, 
#    data loss, or broken packages resulting from this script.
# ⚠️ All credits for themes/icons go to the original developers 
#    at: https://github.com/vinceliuice
# ⚠️ Use this script at your own risk.
# ----------------------

# Function to print separators
print_line() {
    echo "------------------------------------------------------------"
}

clear
echo "============================================================"
echo "   🍎 NEXAGEEK: Fedora to macOS Transformation Script 🍎   "
echo "============================================================"
echo "⚠️  DISCLAIMER: Use this script at your own risk."
echo "   NEXAGEEK is not responsible for any system modifications."
print_line
read -p "Press [ENTER] to accept the disclaimer and start, or [CTRL+C] to exit..."

# 1. Update and install core dependencies
echo "📦 [1/7] Installing required tools and dependencies..."
sudo dnf install -y git gnome-tweaks gnome-extensions-app sassc util-linux-user glib2-devel

# 2. Create local directories
echo "📂 [2/7] Preparing local theme and icon directories..."
mkdir -p ~/.themes
mkdir -p ~/.icons

# 3. Install WhiteSur GTK Theme
echo "🎨 [3/7] Fetching and installing WhiteSur GTK Theme..."
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
cd WhiteSur-gtk-theme
./install.sh -t all -l -N stable # Includes libadwaita and Nautilus fixes
cd ..

# 4. Install WhiteSur Icon Theme
echo "🖼️ [4/7] Fetching and installing WhiteSur Icon Theme..."
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git --depth=1
cd WhiteSur-icon-theme
./install.sh
cd ..

# 5. Flatpak Support
echo "📦 [5/7] Applying theme permissions to Flatpaks..."
sudo flatpak override --filesystem=xdg-config/gtk-4.0
sudo flatpak override --filesystem=xdg-config/gtk-3.0

# 6. UI Tweaks: Move window buttons to the left (Mac Style)
echo "🛠️ [6/7] Customizing UI: Moving window buttons to the left..."
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

# 7. Cleanup
echo "🧹 [7/7] Cleaning up temporary installation files..."
rm -rf WhiteSur-gtk-theme WhiteSur-icon-theme

print_line
echo "✅ Transformation Complete by NEXAGEEK!"
print_line
echo "👉 FINAL STEPS:"
echo "1. Open 'GNOME Tweaks' tool."
echo "2. Go to 'Appearance' tab."
echo "3. Select 'WhiteSur' for Legacy Applications & Icons."
echo "4. Enjoy your new macOS look on Fedora!"
echo ""
echo "🔗 Subscribe for more: https://www.youtube.com/@NEXAGEEK"
print_line
