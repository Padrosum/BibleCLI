<div align="center">

<img src="https://via.placeholder.com/120x120?text=LOGO" alt="BibleCLI Logo" width="120" height="120"/>

# BibleCLI
**Kutsal metinler için ultra hızlı, terminal tabanlı okuyucu.**

[![Bash](https://img.shields.io/badge/Script-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)]()
[![JSON](https://img.shields.io/badge/Data-JSON-000000?style=for-the-badge&logo=json&logoColor=white)]()
[![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)]()

</div>

<br>

<div align="center">
  <img src="https://via.placeholder.com/800x400?text=Terminal+Ekran+Görüntüsü+Buraya+Gelecek" alt="BibleCLI Terminal Görünümü" width="100%"/>
</div>

## 🚀 Proje Hakkında

**BibleCLI**, Linux topluluğu için geliştirilmiş minimalist bir komut satırı aracıdır. Yerel JSON dosyalarını `jq` gücüyle işleyerek, internet bağlantısına ihtiyaç duymadan milisaniyeler içinde aradığınız metni terminalinize getirir. Geliştirme yaparken veya terminalde çalışırken odaklanmayı bozmadan hızlıca okuma yapmanızı sağlar.

## ✨ Neler Sunuyor?

* ⚡ **Sıfır Gecikme:** Karmaşık veritabanları veya API beklemeleri yok.
* 🎨 **Sade Arayüz:** Göz yormayan, okumayı kolaylaştıran terminal renkleri.
* 🔍 **Nokta Atışı Sorgu:** Kitap, bölüm veya ayet bazında hassas filtreleme.
* 💻 **Tamamen Çevrimdışı:** Bir kez kurun, her zaman yanınızda olsun.

---

## ⚙️ Kurulum

Sadece birkaç saniye içinde sisteminize entegre edebilirsiniz. *(Sisteminizde `jq` yüklü olduğundan emin olun).*

```bash
# 1. Repoyu klonlayın ve dizine girin
git clone [https://github.com/Padrosum/Bcli.git](https://github.com/Padrosum/Bcli.git) && cd Bcli

# 2. JSON veri setini indirin ve ana dizine çıkarın
git clone [https://github.com/aruljohn/Bible-kjv/](https://github.com/aruljohn/Bible-kjv/) temp_data
mv temp_data/*.json . && rm -rf temp_data

# 3. Çalıştırma yetkisi verin
chmod +x *.sh
