@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.0.20200930.91416"
SET AppLocation="dotTrace\ch-0\\%version%\\dotTrace-%version%.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\dotTrace" /t REG_SZ /v "" /d "Open in dotTrace - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\dotTrace" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\dotTrace\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\dotTrace" /t REG_SZ /v "" /d "Open with dotTrace - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\dotTrace" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\dotTrace\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\dotTrace" /t REG_SZ /v "" /d "Open with dotTrace - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\dotTrace" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\dotTrace\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
