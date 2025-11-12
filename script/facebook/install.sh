#!/bin/bash

echo "Installing Facebook..."
sleep 5
sudo apt update
sudo apt install chromium
echo "#!/bin/bash

chromium --no-sandbox --app=https://facebook.com --class=facebook" > facebook
chmod +x telegram
mv facebook /usr/local/bin

echo "[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Facebook
Exec=/usr/local/bin/facebook
Icon=facebook
Categories=Network;WebBrowser;
StartupWMClass=threads" > facebook.desktop
mv facebook.desktop /usr/share/applications
sudo rm -rf install.sh
echo "installed successfully..."
