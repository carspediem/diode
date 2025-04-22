#!/bin/bash

echo "📦 Gerekli temel paketler kuruluyor..."
sudo apt update && sudo apt install -y sudo apt ufw snapd

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
sudo ufw reload

echo "🚀 Sistem güncelleniyor..."
sudo apt update && sudo apt upgrade -y

echo "📁 Snapd tekrar kuruluyor..."
sudo apt install snapd -y

echo "🛠️ Diode Node kuruluyor..."
sudo snap install diode-node

echo "📦 Node bilgileri gösteriliyor..."
diode info

echo "İşlem tamamlandı.📬 İletişim: X @dakpluto"
