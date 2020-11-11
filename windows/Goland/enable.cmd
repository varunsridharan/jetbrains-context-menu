@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.7319.61"
SET AppLocation="Goland\ch-0\\%version%\\bin\goland64.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\Goland" /t REG_SZ /v "" /d "Open in Goland - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Goland" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Goland\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Goland" /t REG_SZ /v "" /d "Open with Goland - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Goland" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Goland\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Goland" /t REG_SZ /v "" /d "Open with Goland - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Goland" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Goland\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
