@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="201.6668.153"
SET AppLocation="PhpStorm\ch-0\\%version%\\bin\phpstorm64.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\PhpStorm" /t REG_SZ /v "" /d "Open in PhpStorm - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\PhpStorm" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\PhpStorm\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\PhpStorm" /t REG_SZ /v "" /d "Open with PhpStorm - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\PhpStorm" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\PhpStorm\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\PhpStorm" /t REG_SZ /v "" /d "Open with PhpStorm - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\PhpStorm" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\PhpStorm\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
