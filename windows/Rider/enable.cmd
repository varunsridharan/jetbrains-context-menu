@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.7660.16"
SET AppLocation="Rider\ch-0\\%version%\\bin\rider64.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\Rider" /t REG_SZ /v "" /d "Open in Rider - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Rider" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Rider\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Rider" /t REG_SZ /v "" /d "Open with Rider - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Rider" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Rider\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Rider" /t REG_SZ /v "" /d "Open with Rider - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Rider" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Rider\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
