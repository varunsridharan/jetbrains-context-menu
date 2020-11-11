@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.7319.56"
SET AppLocation="DateGrip\ch-0\\%version%\\bin\datagrip64.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\datagrip" /t REG_SZ /v "" /d "Open in DateGrip - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\datagrip" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\datagrip\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\datagrip" /t REG_SZ /v "" /d "Open with DateGrip - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\datagrip" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\datagrip\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\datagrip" /t REG_SZ /v "" /d "Open with DateGrip - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\datagrip" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\datagrip\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
