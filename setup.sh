#!/bin/bash

echo "📦 Gerekli temel paketler kuruluyor..."
sudo apt update && sudo apt install -y sudo apt ufw snapd

echo "🔧 Gerekli portlar açılıyor..."
PORTS=(22 38537 51055 41046 443 993 1723 10000 8545 8443)
for PORT in "${PORTS[@]}"
do
    sudo ufw allow $PORT
done
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
