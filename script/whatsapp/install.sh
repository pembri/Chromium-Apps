#!/bin/bash

echo "Installing WhatsApp..."
sleep 5
sudo apt update
sudo apt install chromium
echo "#!/bin/bash

chromium --no-sandbox --app=https://https://web.whatsapp.com/ --class=whatsapp" > whatsapp
chmod +x whatsapp
mv whatsapp /usr/local/bin

echo "[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=WhatsApp
Exec=/usr/local/bin/whatsapp
Icon=whatsapp
Categories=Network;WebBrowser;
StartupWMClass=threads" > whatsapp.desktop
mv whatsapp.desktop /usr/share/applications
sudo rm -rf install.sh
echo "installed successfully..."
