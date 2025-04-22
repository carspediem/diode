# 🇹🇷 Diode Node Kurulum Rehberi (Türkçe)

Bu rehber, Diode Network ağına katılıp pasif gelir elde etmek isteyenler için hızlı ve sade bir node kurulum kılavuzudur.

## 🧱 Gereksinimler

- Ubuntu/Debian sistem - Kişisel bilgisayar (bilgisayarda port sıkıntısı olabiliyor, o yüzden sunucu kiralamak en iyisi)
- `snapd` paket yöneticisi  
- Açık portlar
- Kesintisiz internet

---


## ⚙️ Tek kodla kurulum
```
wget https://raw.githubusercontent.com/carspediem/diode/main/setup.sh && chmod +x setup.sh && ./setup.sh
```






### 1. Kurulum sonrası işlemler: Platforma cüzdan bağlama
* Websitesi: https://diodenetwork.io/app/ 

İster yeni bir burner cüzdan isterse normal kullandığınız cüzdan ile bağlanabilirsiniz. 



### 2. Diode Collab masaüstü uygulamasını indir

Link: https://diode.io/#download-app

- Sağ tepeden önce Get App'a tıkla
- Sistemine uygun olan versiyonu indir kur
 

**UYARI**- **Dosyanın virustotal taraması link: https://www.virustotal.com/gui/file/9a0e07f05a1bec7526880dbc21079265e7b775c5c6bdd3c770e289a4147d4375 Ancak her ihtimale karşı başka bir bilgisayarda kurabilirsiniz. Node kayıt işlemleri için uygulamayı indirip kurmamız şart**


![image](https://github.com/user-attachments/assets/90fe3ed1-ddd2-4708-933e-28e64efc7bef)




### 3. Kurulum sonrası Zone bağlanma:
- Kurulum tamamlandıktan sonra profil oluşturun .
- Daha sonra aşağıdaki videoda gösterildiği gibi main zone kodunu yapıştırıp join diyin
- Sync bir kaç dakika sürebiliyor, isterseniz dismiss diyip atlayın
- Kodu yazarak Zone'a katılın:

```bash
p0xUHtufRS_tMNd9XRvnxbMmXPtOyRbPrQLnLN4j3VNsDhwSrpRYpwbnhMZ2
```

![image](https://github.com/user-attachments/assets/6da979ce-3952-44c6-a934-ae3bb21aab9e)

![image](https://github.com/user-attachments/assets/dee940bb-002b-40e0-a991-65ad6a698d29)

![image](https://github.com/user-attachments/assets/a9978890-9e21-4fe0-9aed-6237e668d8a9)





### 4. Programa kayıt olma:

- Aşağıda vermiş olduğum kodu fotoğrafta görünen sol taraftaki **registrar** kanalına yapıştırıp gönderiyoruz.
- Kodu girdikten sonra "**I Accept**" yazarak kabul ediyoruz ve daha sonra bizede paylaşmamız için bir kod veriyor. Bununla sizde arkadaşlarınızı davet edebilirsiniz.

```bash
UCKDHVBGAEXDVSKHNWNI
```
![image](https://github.com/user-attachments/assets/f09266e7-28c2-4508-967c-2f8680770d81)



### 5. Cüzdan bağlama

Websitesine bağlamış olduğunuz cüzdan adresini aşağıdaki komutla profilinize kayıt edin.

```bash
set wallet CUZDANADRESI
```

![image](https://github.com/user-attachments/assets/067aac74-777a-4d88-8941-28bc49899db4)


## 🧑‍💻 6. Sunucuda çalıştırdığımız Node'u uygulamada kayit etmek

Sunucuda çalıştırdığımız nodumuzu videoda ve aşağıdaki fotoda gözüktüğü gibi kayıt edelim. Node sayısında herhangi bir sınırlama yok, istenildiği kadar eklenebilir. Ne kadar çok sunucu o kadar çok node o kadar çok puan.

```bash
register node NODEIDSI
```

![image](https://github.com/user-attachments/assets/7fa5e779-dd32-4e3d-8fc5-adfd4bb343bc)



## 🔗 Kaynaklar

- 📚 [Resmi Belgeler](https://network.docs.diode.io)  
- 🌍 [Web Sitesi](https://diodenetwork.io)
- CoreNode'a özel teşekkürler
