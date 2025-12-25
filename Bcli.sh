#!/bin/bash

# --- Ayarlar ve Renkler ---
BIBLE_DIR="."
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# --- Yardım Menüsü ---
show_help() {
    echo -e "${BOLD}${CYAN}╔══════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BOLD}${CYAN}║            BIBLE CLI SEARCH TOOL - v2.0                  ║${NC}"
    echo -e "${BOLD}${CYAN}╚══════════════════════════════════════════════════════════╝${NC}"
    echo -e "${YELLOW}KULLANIM:${NC}"
    echo -e "  $0 \"Kitap Adı\" [Bölüm] [Ayet]"
    echo -e ""
    echo -e "${YELLOW}ÖRNEKLER:${NC}"
    echo -e "  $0 \"Genesis\" 1 1          ${BLUE}# Tek bir ayet getirir${NC}"
    echo -e "  $0 \"John\" 3               ${BLUE}# Bir bölümün tüm ayetlerini listeler${NC}"
    echo -e "  $0 --list                 ${BLUE}# Mevcut kitapların listesini gösterir${NC}"
    echo -e ""
    echo -e "${YELLOW}NOT:${NC} Kitap adları boşluk içeriyorsa çift tırnak kullanın."
    echo -e "------------------------------------------------------------"
}

# --- Kitapları Listeleme ---
list_books() {
    echo -e "${BOLD}${GREEN}Mevcut Kitap Listesi:${NC}"
    ls "$BIBLE_DIR" | sed 's/\.json//' | column -c 80
}

# --- Ana Mantık ---

# Parametre kontrolü
if [[ $# -eq 0 ]] || [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
    show_help
    exit 0
fi

if [[ "$1" == "--list" ]] || [[ "$1" == "-l" ]]; then
    list_books
    exit 0
fi

# Girdileri al
BOOK_INPUT="$1"
CHAPTER="$2"
VERSE="$3"
FILE="$BIBLE_DIR/$BOOK_INPUT.json"

# Dosya kontrolü
if [ ! -f "$FILE" ]; then
    echo -e "${RED}Hata:${NC} '${BOOK_INPUT}' kitabı bulunamadı."
    echo -e "Kitap listesini görmek için: ${BOLD}$0 --list${NC}"
    exit 1
fi

echo -e "${BLUE}Sorgulanıyor: ${BOLD}$BOOK_INPUT $CHAPTER:$VERSE...${NC}"

# JQ Sorgusu (Eğer ayet girilmemişse tüm bölümü getirir)
if [ -z "$VERSE" ]; then
    # Sadece Bölüm Sorgusu
    RESULT=$(jq -r --arg CH "$CHAPTER" \
        '.chapters[] | select(.chapter == $CH) | .verses[] | "\(.verse): \(.text)"' \
        "$FILE")
else
    # Tek Ayet Sorgusu
    RESULT=$(jq -r --arg CH "$CHAPTER" --arg VS "$VERSE" \
        '.chapters[] | select(.chapter == $CH) | .verses[] | select(.verse == $VS) | .text' \
        "$FILE")
fi

# Çıktı Kontrolü ve Renkli Yazdırma
if [ -z "$RESULT" ] || [ "$RESULT" == "null" ]; then
    echo -e "${RED}Hata:${NC} Belirtilen bölüm veya ayet bu kitapta mevcut değil."
else
    echo -e "\n${BOLD}${GREEN}═══ $BOOK_INPUT $CHAPTER${VERSE:+:$VERSE} ═══${NC}"
    echo -e "${CYAN}$RESULT${NC}"
    echo -e "${GREEN}══════════════════════════${NC}\n"
fi
