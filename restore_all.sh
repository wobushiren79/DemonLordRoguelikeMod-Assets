#!/usr/bin/env bash
# 把本目录下所有分卷/zip 还原到 Unity 工程的 Assets/ModResource/Spine/
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
TARGET="${1:-$HERE/../DemonLordRoguelikeMod/Assets/ModResource/Spine}"
mkdir -p "$TARGET"
echo "目标目录: $TARGET"

echo "[AeonsEcho] 解压 AeonsEcho.zip ..."
unzip -q -o AeonsEcho.zip -d "$TARGET"

echo "[ArkRe] 解压 ArkRe.zip ..."
unzip -q -o ArkRe.zip -d "$TARGET"

echo "[BrownDust] 解压 BrownDust.zip ..."
unzip -q -o BrownDust.zip -d "$TARGET"

echo "[CherryTale] 解压 CherryTale.zip ..."
unzip -q -o CherryTale.zip -d "$TARGET"

echo "[CrossCore] 合并分卷..."
cat CrossCore.zip.001 CrossCore.zip.002 > CrossCore.zip
unzip -q -o CrossCore.zip -d "$TARGET"
rm -f CrossCore.zip

echo "[Echocalypse] 合并分卷..."
cat Echocalypse.zip.001 Echocalypse.zip.002 > Echocalypse.zip
unzip -q -o Echocalypse.zip -d "$TARGET"
rm -f Echocalypse.zip

echo "[GirlWars] 解压 GirlWars.zip ..."
unzip -q -o GirlWars.zip -d "$TARGET"

echo "[Nikke] 合并分卷..."
cat Nikke.zip.001 Nikke.zip.002 > Nikke.zip
unzip -q -o Nikke.zip -d "$TARGET"
rm -f Nikke.zip

echo "[Other] 解压 Other.zip ..."
unzip -q -o Other.zip -d "$TARGET"

echo "[PutGirl] 解压 PutGirl.zip ..."
unzip -q -o PutGirl.zip -d "$TARGET"

echo "[Snowbreak] 解压 Snowbreak.zip ..."
unzip -q -o Snowbreak.zip -d "$TARGET"

echo "[StarLusts] 解压 StarLusts.zip ..."
unzip -q -o StarLusts.zip -d "$TARGET"

echo "全部还原完成。"
