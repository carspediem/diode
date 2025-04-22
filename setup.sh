#!/bin/bash

echo "Dakpluto sunar: Diode Node tam otomatik kurulum başlatılıyor..."

# Gerekli temel paketler
sudo apt update && sudo apt install -y sudo apt ufw snapd

# Gerekli portları aç
echo "Gerekli portlar açılıyor..."
PORTS=(22 38537 51055 41046 443 993 1723 10000 8545 8443)
for PORT in "${PORTS[@]}"
do
    sudo ufw allow $PORT
done
sudo ufw reload

# Sistemi güncelle
sudo apt update && sudo apt upgrade -y

# Snapd tekrar kurulursa
sudo apt install snapd -y

# Diode Node kurulumu
sudo snap install diode-node

# Node bilgilerini göster
echo "Kurulum tamamlandı. Node bilgileri aşağıda:"
diode info

echo "İletişim: X @dakpluto"
