@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.0.20200930.91416"
SET AppLocation="dotMemory\ch-0\\%version%\\dotMemory-%version%.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\dotMemory" /t REG_SZ /v "" /d "Open in dotMemory - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\dotMemory" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\dotMemory\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\dotMemory" /t REG_SZ /v "" /d "Open with dotMemory - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\dotMemory" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\dotMemory\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\dotMemory" /t REG_SZ /v "" /d "Open with dotMemory - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\dotMemory" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\dotMemory\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
