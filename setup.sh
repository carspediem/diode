#!/bin/bash

echo "📦 Gerekli temel paketler kuruluyor..."
sudo apt update && sudo apt install -y sudo apt ufw snapd
sleep 5

echo "🔧 Gerekli portlar açılıyor..."
sudo ufw allow 22
sudo ufw allow 38537
sudo ufw allow 51055
sudo ufw allow 41046
sudo ufw allow 443
sudo ufw allow 993
sudo ufw allow 1723
sudo ufw allow 10000
sudo ufw allow 8545
sudo ufw allow 8443
sleep 5
sudo ufw reload
sleep 5

echo "🚀 Sistem güncelleniyor..."
sudo apt update && sudo apt upgrade -y
sleep 5

echo "📁 Snapd tekrar kuruluyor..."
sudo apt install snapd -y
sleep 5

echo "🛠️ Diode Node kuruluyor..."
sudo snap install diode-node

echo "⏳ Kurulumun tamamlanması birkaç saniye sürebilir..."
sleep 20

echo "📦 Node bilgileri gösteriliyor..."
diode info
sleep 5

echo "İşlem tamamlandı.📬 İletişim: X @dakpluto"
