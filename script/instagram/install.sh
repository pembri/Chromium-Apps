#!/bin/bash

echo "Installing Instagram..."
sleep 5
sudo apt update
sudo apt install chromium
echo "#!/bin/bash

chromium --no-sandbox --app=https://instagram.com --class=instagram" > instagram
chmod +x instagram
mv instagram /usr/local/bin

echo "[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Instagram
Exec=/usr/local/bin/instagram
Icon=instagram
Categories=Network;WebBrowser;
StartupWMClass=threads" > instagram.desktop
mv instagram.desktop /usr/share/applications
sudo rm -rf install.sh
echo "installed successfully..."
