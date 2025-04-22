#!/bin/bash

function wait_with_countdown() {
    seconds=$1
    while [ $seconds -gt 0 ]; do
        echo -ne "⏳ Bekleniyor: $seconds saniye\r"
        sleep 1
        : $((seconds--))
    done
    echo ""
}

echo "🚀 Dakpluto sunar: Diode Node tam otomatik kurulum başlıyor..."

echo "📦 Gerekli temel paketler kuruluyor..."
sudo apt update && sudo apt install -y sudo apt ufw snapd
wait_with_countdown 5

echo "🔧 Gerekli portlar açılıyor..."
PORTS=(22 38537 51055 41046 443 993 1723 10000 8545 8443)
for PORT in "${PORTS[@]}"; do
    sudo ufw allow $PORT
done
sudo ufw reload
wait_with_countdown 5

echo "🚀 Sistem güncelleniyor..."
sudo apt update && sudo apt upgrade -y
wait_with_countdown 5

echo "📁 Snapd tekrar kuruluyor..."
sudo apt install snapd -y
wait_with_countdown 5

echo "🛠️ Diode Node kuruluyor..."
sudo snap install diode-node
wait_with_countdown 10

echo "📦 Node bilgileri gösteriliyor..."
diode-node.info
wait_with_countdown 5

echo "✅ Kurulum tamamlandı!"
wait_with_countdown 5
echo "Bol Kazançlar! 📬 İletişim: X @dakpluto"
