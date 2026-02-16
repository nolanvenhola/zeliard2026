#!/bin/bash
# Download all Zeliard art assets from The Spriters Resource
# Sharp X1 version: https://www.spriters-resource.com/sharp_x1/zeliard/

BASE_URL="https://www.spriters-resource.com"
SPRITE_DIR="$(dirname "$0")/Sprites"
MAP_DIR="$(dirname "$0")/Maps"

mkdir -p "$SPRITE_DIR" "$MAP_DIR"

download_asset() {
    local asset_id="$1"
    local filename="$2"
    local dest_dir="$3"
    local dest_path="$dest_dir/$filename.png"

    if [ -f "$dest_path" ]; then
        echo "SKIP: $filename (already exists)"
        return 0
    fi

    echo "Fetching page for: $filename (asset $asset_id)..."
    local page_html
    page_html=$(curl -s -L "$BASE_URL/sharp_x1/zeliard/asset/$asset_id/")

    # Extract download link: href="/media/assets/NNN/ASSET_ID.png?updated=..."
    local download_path
    download_path=$(echo "$page_html" | grep -oP 'href="(/media/assets/[^"]+\.png[^"]*)"' | head -1 | grep -oP '/media/assets/[^"]+')

    if [ -z "$download_path" ]; then
        echo "ERROR: Could not find download link for $filename (asset $asset_id)"
        return 1
    fi

    echo "Downloading: $BASE_URL$download_path -> $dest_path"
    curl -s -L -o "$dest_path" "$BASE_URL$download_path"

    if [ -f "$dest_path" ] && [ -s "$dest_path" ]; then
        local size=$(stat -c%s "$dest_path" 2>/dev/null || stat -f%z "$dest_path" 2>/dev/null)
        echo "OK: $filename ($size bytes)"
    else
        echo "ERROR: Download failed for $filename"
        return 1
    fi
}

echo "=== Downloading Sprites (32 assets) ==="

# Enemies
download_asset 110538 "Area1_Enemies" "$SPRITE_DIR"
download_asset 110539 "Area2_Enemies" "$SPRITE_DIR"
download_asset 110540 "Area3_Enemies" "$SPRITE_DIR"
download_asset 110541 "Area4_Enemies" "$SPRITE_DIR"
download_asset 110542 "Area5_Enemies" "$SPRITE_DIR"
download_asset 110543 "Area6_Enemies" "$SPRITE_DIR"
download_asset 110544 "Area7_Enemies" "$SPRITE_DIR"
download_asset 110545 "Area8_Enemies" "$SPRITE_DIR"

# Bosses
download_asset 122845 "Boss1_Cangreo" "$SPRITE_DIR"
download_asset 122844 "Boss2_Pulpo" "$SPRITE_DIR"
download_asset 122843 "Boss3_Pollo" "$SPRITE_DIR"
download_asset 122842 "Boss4_7A_Agar_Paguro" "$SPRITE_DIR"
download_asset 122841 "Boss5_Vista" "$SPRITE_DIR"
download_asset 122840 "Boss6_Tarso" "$SPRITE_DIR"
download_asset 122839 "Boss7B_Dragon" "$SPRITE_DIR"
download_asset 122838 "Boss8A_Alguien" "$SPRITE_DIR"
download_asset 122837 "Boss8B_Archfiend" "$SPRITE_DIR"

# Miscellaneous
download_asset 122836 "Connecting_Tunnels" "$SPRITE_DIR"
download_asset 153655 "Ending_Cutscene" "$SPRITE_DIR"
download_asset 123031 "HUD_Inventory" "$SPRITE_DIR"
download_asset 110546 "Labyrinth_Sprites" "$SPRITE_DIR"
download_asset 110547 "Labyrinth_Tiles" "$SPRITE_DIR"
download_asset 110602 "NPCs" "$SPRITE_DIR"
download_asset 153652 "Opening_Cutscene_01" "$SPRITE_DIR"
download_asset 153653 "Opening_Cutscene_02" "$SPRITE_DIR"
download_asset 153654 "Opening_Cutscene_03" "$SPRITE_DIR"
download_asset 110604 "Shops_Inner_Buildings" "$SPRITE_DIR"
download_asset 110600 "Spell_Animations" "$SPRITE_DIR"
download_asset 110601 "Sword_Animations" "$SPRITE_DIR"
download_asset 110603 "Town_Backgrounds" "$SPRITE_DIR"
download_asset 110605 "Town_Tiles" "$SPRITE_DIR"

# Player
download_asset 164401 "Duke_Garland" "$SPRITE_DIR"

echo ""
echo "=== Downloading Maps (41 assets) ==="

download_asset 164305 "Absor_Cavern" "$MAP_DIR"
download_asset 164306 "Agar_Boss" "$MAP_DIR"
download_asset 164307 "Alguien_Boss" "$MAP_DIR"
download_asset 164309 "Archfiend_Boss" "$MAP_DIR"
download_asset 164308 "Archfiends_Abode" "$MAP_DIR"
download_asset 164310 "Arrugio_Cavern" "$MAP_DIR"
download_asset 164311 "Bosque_Village" "$MAP_DIR"
download_asset 164312 "Caliente_Cavern" "$MAP_DIR"
download_asset 164313 "Cangreo_Boss" "$MAP_DIR"
download_asset 164314 "Cementar_Cavern" "$MAP_DIR"
download_asset 164315 "Correr_Cavern" "$MAP_DIR"
download_asset 164316 "Corroer_Cavern" "$MAP_DIR"
download_asset 164317 "Desleal_Cavern" "$MAP_DIR"
download_asset 164318 "Dorado_Town" "$MAP_DIR"
download_asset 164319 "Dragon_Boss" "$MAP_DIR"
download_asset 164320 "Escarcha_Cavern" "$MAP_DIR"
download_asset 164321 "Esco_Village" "$MAP_DIR"
download_asset 164322 "Falter_Cavern" "$MAP_DIR"
download_asset 164323 "Felishika_Castle" "$MAP_DIR"
download_asset 164324 "Final_Cavern" "$MAP_DIR"
download_asset 164325 "Glacial_Cavern" "$MAP_DIR"
download_asset 164326 "Helada_Town" "$MAP_DIR"
download_asset 164327 "Llama_Town" "$MAP_DIR"
download_asset 164328 "Madera_Cavern" "$MAP_DIR"
download_asset 164329 "Malicia_Cavern" "$MAP_DIR"
download_asset 164330 "Milagro_Cavern" "$MAP_DIR"
download_asset 164331 "Muralla_Town" "$MAP_DIR"
download_asset 164332 "Paguro_Boss" "$MAP_DIR"
download_asset 164333 "Peligro_Cavern_1" "$MAP_DIR"
download_asset 164334 "Peligro_Cavern_2" "$MAP_DIR"
download_asset 164335 "Plata_Cavern" "$MAP_DIR"
download_asset 164336 "Pollo_Boss" "$MAP_DIR"
download_asset 164337 "Pulpo_Boss" "$MAP_DIR"
download_asset 164338 "Pureza_Town" "$MAP_DIR"
download_asset 164339 "Reaccion_Cavern" "$MAP_DIR"
download_asset 164340 "Rizu_Cavern" "$MAP_DIR"
download_asset 164341 "Satono_Town" "$MAP_DIR"
download_asset 164342 "Tarso_Boss" "$MAP_DIR"
download_asset 164343 "Tesoro_Cavern" "$MAP_DIR"
download_asset 164344 "Tumba_Town" "$MAP_DIR"
download_asset 164345 "Vista_Boss" "$MAP_DIR"

echo ""
echo "=== Download Complete ==="
echo "Sprites: $(ls -1 "$SPRITE_DIR"/*.png 2>/dev/null | wc -l) files"
echo "Maps: $(ls -1 "$MAP_DIR"/*.png 2>/dev/null | wc -l) files"
