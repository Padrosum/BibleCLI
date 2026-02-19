📖 BibleCLI

BibleCLI, kutsal metinleri terminalinden ayrılmadan, hızlı ve renkli bir şekilde okumanı sağlayan minimalist bir Bash aracıdır. Hafiftir, bağımlılığı azdır ve tamamen terminal dostudur.

    "Terminalde ışık olsun." — Bir Linux Kullanıcısı

✨ Özellikler

    🚀 Işık Hızında: JSON tabanlı yerel veritabanı sayesinde anında sonuç.

    🎨 Renkli Arayüz: Okumayı kolaylaştıran, göz yormayan ANSI renk paleti.

    🔍 Esnek Sorgulama: İster tek bir ayet, ister koca bir bölüm.

    📦 Çevrimdışı Çalışma: Kurulumdan sonra internet bağlantısı gerektirmez.

    📜 Kitap Listeleme: Mevcut tüm kitapları sütunlar halinde görebilme.

🛠️ Gereksinimler

Çalıştırmadan önce şu araçların sisteminizde yüklü olduğundan emin olun:

    bash: Temel kabuk.

    jq: JSON verilerini işlemek için işlemci (Genelde sudo apt install jq ile kurulur).

    column: Çıktıları düzenli göstermek için (Çoğu dağıtımda hazır gelir).

🚀 Kurulum & Hızlı Başlangıç

Aşağıdaki komutları terminaline kopyalayarak BibleCLI'yı ve veri setini anında kurabilirsin:
Bash

# Repoyu klonla
git clone https://github.com/Padrosum/Bcli.git
cd Bcli

# Bible veri setini dahil et (aruljohn/Bible-kjv)
git clone https://github.com/aruljohn/Bible-kjv/ temp_data
mv temp_data/*.json .
rm -rf temp_data

# Çalıştırma izni ver
chmod +x bible.sh

📖 Kullanım Kılavuzu

Scripti ./bible.sh komutuyla çalıştırabilirsiniz.
1. Kitapları Listele

Hangi kitapların mevcut olduğunu görmek için:
Bash

./bible.sh --list

2. Tek Bir Ayet Getir

Kitap adı, Bölüm ve Ayet numarasını girin:
Bash

./bible.sh "Genesis" 1 1

3. Tüm Bir Bölümü Oku

Sadece kitap adı ve bölüm numarasını girin:
Bash

./bible.sh "John" 3

    İpucu: Kitap adı boşluk içeriyorsa (örn: "1 John") mutlaka çift tırnak içinde yazın.

🛡️ Sorumluluk Reddi (Disclaimer)

Bu script "olduğu gibi" (as-is) sağlanmıştır. Yazılımın kullanımından doğabilecek (terminal bağımlılığı veya ruhani aydınlanma gibi) durumlardan geliştirici sorumlu tutulamaz. Üretim ortamlarında kullanmadan önce test ediniz.
🤝 Katkı & İletişim

Hataları bildirmek veya yeni özellikler önermek için Issues kısmını kullanabilirsiniz.

    Geliştirici: Padrosum

    Veri Sağlayıcı: aruljohn/Bible-kjv

    Destek: Gemini AI ile modernize edilmiştir.
