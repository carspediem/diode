#!/bin/bash

echo "🚀 Diode Node tam otomatik kurulum başlatılıyor..."

# 1. Temel araçlar ve UFW kur
echo "🔧 Gerekli paketler kuruluyor..."
sudo apt update && sudo apt install -y sudo apt ufw snapd

# 2. Gerekli portları aç
echo "🌐 Portlar açılıyor..."
PORTS=(22 38537 51055 41046 443 993 1723 10000 8545 8443)
for PORT in "${PORTS[@]}"
do
    sudo ufw allow $PORT
done
sudo ufw reload

# 3. Sistemi güncelle
echo "🔄 Sistem güncelleniyor..."
sudo apt update && sudo apt upgrade -y

# 4. Snapd kurulumu
echo "📦 Snapd kuruluyor..."
sudo apt install snapd -y

# 5. Diode Node kurulumu
echo "⚙️ Diode Node kuruluyor..."
sudo snap install diode-node

# 6. Kurulum sonrası kontrol
echo "✅ Kurulum tamamlandı. Node bilgileri aşağıda:"
diode info
