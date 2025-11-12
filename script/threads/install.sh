
#!/bin/bash

sudo mkdir /usr/local/icons
clear
echo "Installing Threads..."
sleep 5
wget  https://raw.githubusercontent.com/pembri/Chromium-Apps/refs/heads/main/icons/threads.png
sudo apt update
sudo apt install chromium
sudo mv threads.png /usr/local/icons
echo "#!/bin/bash

chromium --no-sandbox --app=https://threads.com --class=threads" > threads
chmod +x threads
mv threads /usr/local/bin

echo "[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Threads
Exec=/usr/local/bin/threads
Icon=/usr/local/icons/threads.png
Categories=Network;WebBrowser;
StartupWMClass=threads" > threads.desktop
mv threads.desktop /usr/share/applications
sudo rm -rf install.sh
echo "installed successfully..."
