@echo off
chcp 65001 >nul
REM 把本目录下所有分卷/zip 还原到 Unity 工程的 Assets\ModResource\Spine\
setlocal
set TARGET=%~1
if "%TARGET%"=="" set TARGET=%~dp0..\DemonLordRoguelikeMod\Assets\ModResource\Spine
echo 目标目录: %TARGET%
if not exist "%TARGET%" mkdir "%TARGET%"

echo [AeonsEcho] 解压 AeonsEcho.zip ...
tar -xf AeonsEcho.zip -C "%TARGET%"

echo [ArkRe] 解压 ArkRe.zip ...
tar -xf ArkRe.zip -C "%TARGET%"

echo [BrownDust] 解压 BrownDust.zip ...
tar -xf BrownDust.zip -C "%TARGET%"

echo [CherryTale] 解压 CherryTale.zip ...
tar -xf CherryTale.zip -C "%TARGET%"

echo [CrossCore] 合并分卷...
copy /b CrossCore.zip.001 + CrossCore.zip.002 CrossCore.zip >nul
echo [CrossCore] 解压...
tar -xf CrossCore.zip -C "%TARGET%"
del CrossCore.zip

echo [Echocalypse] 合并分卷...
copy /b Echocalypse.zip.001 + Echocalypse.zip.002 Echocalypse.zip >nul
echo [Echocalypse] 解压...
tar -xf Echocalypse.zip -C "%TARGET%"
del Echocalypse.zip

echo [GirlWars] 解压 GirlWars.zip ...
tar -xf GirlWars.zip -C "%TARGET%"

echo [Nikke] 合并分卷...
copy /b Nikke.zip.001 + Nikke.zip.002 Nikke.zip >nul
echo [Nikke] 解压...
tar -xf Nikke.zip -C "%TARGET%"
del Nikke.zip

echo [Other] 解压 Other.zip ...
tar -xf Other.zip -C "%TARGET%"

echo [PutGirl] 解压 PutGirl.zip ...
tar -xf PutGirl.zip -C "%TARGET%"

echo [Snowbreak] 解压 Snowbreak.zip ...
tar -xf Snowbreak.zip -C "%TARGET%"

echo [StarLusts] 解压 StarLusts.zip ...
tar -xf StarLusts.zip -C "%TARGET%"

echo.
echo 全部还原完成。
pause
