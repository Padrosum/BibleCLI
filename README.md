# POGKS — Podman Ghost Kurulum Scripti

Basit ve hızlı: Bu repo, Podman kullanarak Ghost blog'unu container içinde çalıştırmak için bir kurulum scripti içerir.

## Gereksinimler
- Podman
- Bash Shell
- İnternet bağlantısı
- Yeterli disk alanı

## kurulum

```
git clone https://github.com/Padrosum/Bcli

git clone https://github.com/aruljohn/Bible-kjv/
mv Bible-kjv/* Bcli/
cd Bcli
chmod +x ./*.sh
bash *.sh
```

## Yönetim
- Log: podman logs <site-adı>  
- Durdur: podman stop <site-adı>  
- Başlat: podman start <site-adı>  
- Sil: podman rm -f <site-adı>

## Kaldırma
- Container: podman rm -f <site-adı>

## Sorumluluk reddi
Bu script "olduğu gibi" sağlanır. Repo sahibi veya yazanlar script kullanımından doğan hiçbir zarardan sorumlu değildir. Çalıştırmadan önce içeriği inceleyin ve üretimde kullanmadan önce test edin.

## Katkı & İletişim
Hata veya öneri için: https://github.com/Padrosum/POGKS/issues  
Repo sahibi: Padrosum


Gemini AI kullanılmıştır.
