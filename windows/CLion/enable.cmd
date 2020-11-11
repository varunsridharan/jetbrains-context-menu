@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.7660.37"
SET AppLocation="CLion\ch-0\\%version%\\bin\clion64.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\CLion" /t REG_SZ /v "" /d "Open in CLion - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\CLion" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\CLion\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\CLion" /t REG_SZ /v "" /d "Open with CLion - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\CLion" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\CLion\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\CLion" /t REG_SZ /v "" /d "Open with CLion - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\CLion" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\CLion\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
