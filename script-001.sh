
# Update system
sudo dnf upgrade -y

# Enable non free repos
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf upgrade -y

# Install Packages
sudo dnf install zsh yaru-icon-theme breeze-gtk-theme xinput bspwm rofi sxhkd polybar nitrogen lxpolkit python3-pip breeze-cursor-theme ranger w3m firefox thunderbird libreoffice xbacklight xclip gnome-screenshot python3-devel tesseract openh264 libxdo qt6-designer blueman-applet breeze-gtk breeze-icon-theme vim ripgrep lxappearance htop picom dmenu dunst NetworkManager-tui orca fira-code-fonts jetbrains-mono-fonts 

# Setup Configs
git clone "https://github.com/InVision-Technology-BITM-DPSRPK/dotfiles"
cd dotfiles 
cp -r .config/* ~/.config/

# python modules
pip install pytesseract click PySide6 PyMuPDF evdev pdfread Pillow poetry pyenchant pynput pyttsx3 

# clone software
cd ..
git clone https://github.com/InVision-Technology-BITM-DPSRPK/TextEdit
cd TextEdit
echo "#/bin/bash

python $HOME/TextEdit/main.py" > texed
chmod +x texed
sudo cp texed /usr/bin/






