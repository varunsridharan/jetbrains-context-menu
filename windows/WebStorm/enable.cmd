@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.7660.23"
SET AppLocation="WebStorm\ch-0\\%version%\\bin\webstorm64.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\WebStorm" /t REG_SZ /v "" /d "Open in WebStorm - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\WebStorm" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\WebStorm\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\WebStorm" /t REG_SZ /v "" /d "Open with WebStorm - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\WebStorm" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\WebStorm\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\WebStorm" /t REG_SZ /v "" /d "Open with WebStorm - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\WebStorm" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\WebStorm\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
