
#!/bin/bash

sudo mkdir /usr/local/icons
clear
echo "Installing Instagram..."
sleep 5
wget  https://raw.githubusercontent.com/pembri/Chromium-Apps/refs/heads/main/icons/instagram.png
sudo apt update
sudo apt install chromium
sudo mv instagram.png /usr/local/icons
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
Icon=/usr/local/icons/instagram.png
Categories=Network;WebBrowser;
StartupWMClass=threads" > instagram.desktop
mv instagram.desktop /usr/share/applications
sudo rm -rf install.sh
echo "installed successfully..."
