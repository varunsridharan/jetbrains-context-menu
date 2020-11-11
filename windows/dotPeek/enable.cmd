@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.0.20200930.91416"
SET AppLocation="dotPeek\ch-0\\%version%\\dotPeek-%version%.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\dotPeek" /t REG_SZ /v "" /d "Open in dotPeek - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\dotPeek" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\dotPeek\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\dotPeek" /t REG_SZ /v "" /d "Open with dotPeek - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\dotPeek" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\dotPeek\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\dotPeek" /t REG_SZ /v "" /d "Open with dotPeek - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\dotPeek" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\dotPeek\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
