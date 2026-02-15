#!/bin/bash

# =================================================================
# 🚀 Fedora macOS Dock & Shell Setup by NEXAGEEK
# 📺 YouTube: https://www.youtube.com/@NEXAGEEK
# 🔗 GitHub: [Your Repo Link Here]
# =================================================================

# --- [ DISCLAIMER ] ---
# ⚠️ This script modifies GNOME Shell settings and extensions.
# ⚠️ NEXAGEEK is NOT responsible for any UI glitches or desktop
#    crashes. Use this at your own risk.
# ⚠️ All extensions are property of their respective maintainers.
# ----------------------

# Function to print separators
print_line() {
    echo "------------------------------------------------------------"
}

clear
echo "============================================================"
echo "   🍎 NEXAGEEK: Dash-to-Dock & Shell Theme Setup 🍎       "
echo "============================================================"
echo "⚠️  DISCLAIMER: This script modifies your GNOME environment."
echo "   NEXAGEEK is not responsible for any system modifications."
print_line
read -p "Press [ENTER] to accept the disclaimer and start, or [CTRL+C] to exit..."

# 1. Install Extensions
echo "⚓ [1/4] Installing Dash-to-Dock and User-Theme extensions..."
# On Fedora, installing via DNF is safer as it handles dependencies
sudo dnf install -y gnome-shell-extension-dash-to-dock gnome-shell-extension-user-theme

# 2. Enable extensions via CLI
echo "🚀 [2/4] Enabling extensions..."
# Note: Sometimes GNOME needs a session restart to see new DNF-installed extensions
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com 2>/dev/null
gnome-extensions enable dash-to-dock@micxgx.gmail.com 2>/dev/null

# 3. Configure the Dock (macOS Style)
echo "🍎 [3/4] Styling the dock to macOS layout..."
DOCK_PATH="org.gnome.shell.extensions.dash-to-dock"

# Apply settings using gsettings
gsettings set $DOCK_PATH dock-position 'BOTTOM'
gsettings set $DOCK_PATH extend-height false
gsettings set $DOCK_PATH dash-max-icon-size 48
gsettings set $DOCK_PATH autohide true
gsettings set $DOCK_PATH transparency-mode 'DYNAMIC'
gsettings set $DOCK_PATH show-apps-at-top true
# Centering the dock
gsettings set $DOCK_PATH preferred-monitor -1
gsettings set $DOCK_PATH dock-fixed false

# 4. Apply WhiteSur Themes to Interface and Shell
echo "🎨 [4/4] Applying WhiteSur GTK and Shell themes..."
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-Light"
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur"

# This requires the 'user-theme' extension to be active
echo "🐚 Setting the Shell theme (requires User-Theme extension)..."
gsettings set org.gnome.shell.extensions.user-theme name "WhiteSur-Light" 2>/dev/null

print_line
echo "✨ Setup Complete by NEXAGEEK!"
print_line
echo "⚠️  IMPORTANT ACTION REQUIRED:"
echo "Since Fedora uses Wayland by default, you MUST:"
echo "1. Log Out of your current session."
echo "2. Log back in to initialize the Shell Theme and Dock."
echo ""
echo "🔗 Subscribe for more Linux mods: https://www.youtube.com/@NEXAGEEK"
print_line
