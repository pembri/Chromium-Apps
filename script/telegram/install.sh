
#!/bin/bash

sudo mkdir /usr/local/icons
clear
echo "Installing Telegram..."
sleep 5
wget  https://raw.githubusercontent.com/pembri/Chromium-Apps/refs/heads/main/icons/telegram.png
sudo apt update
sudo apt install chromium
sudo mv telegram.png /usr/local/icons
echo "#!/bin/bash

chromium --no-sandbox --app=https://web.telegram.org --class=telegram" > telegram
chmod +x telegram
mv telegram /usr/local/bin

echo "[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Telegram
Exec=/usr/local/bin/telegram
Icon=/usr/local/icons/telegram.png
Categories=Network;WebBrowser;
StartupWMClass=threads" > telegram.desktop
mv telegram.desktop /usr/share/applications
sudo rm -rf install.sh
echo "installed successfully..."
