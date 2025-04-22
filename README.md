# 🇹🇷 Diode Node Kurulum Rehberi (Türkçe)

Bu rehber, Diode Network ağına katılıp pasif gelir elde etmek isteyenler için hızlı ve sade bir node kurulum kılavuzudur.

## 🧱 Gereksinimler

- Ubuntu/Debian sistem  
- `snapd` paket yöneticisi  
- Açık portlar
- Kesintisiz internet

---

## ⚙️ Kurulum Adımları

### Portlari Ac
```
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
```

### 1. Sistemi Güncelleyin:
```bash
sudo apt update && sudo apt upgrade -y
```

### 2. Snapd Kurulumu:
```bash
sudo apt install snapd -y
```

### 3. Diode Node Kurulumu:
```bash
sudo snap install diode-node
```

### 4. Node Bilgilerini Görüntüleme:
```bash
diode info
```

---

## 🌐 Uygulmayi kurmak

```bash
diode serve 80
```

Bu komut ile port 80 üzerinden ağınızı dışarıya açabilirsiniz.

---

## 🧑‍💻 Node kayit etmek

Masaüstü uygulamasından `Zone ID` ile bağlanarak ya da QR kod taratarak ağ oluşturabilir, referans sistemiyle katılım sağlayabilirsiniz.

---

## 🔗 Kaynaklar

- 📚 [Resmi Belgeler](https://network.docs.diode.io)  
- 🌍 [Web Sitesi](https://diodenetwork.io)
