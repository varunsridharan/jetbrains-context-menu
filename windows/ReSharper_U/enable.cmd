@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.0.20200930.91416"
SET AppLocation="ReSharper-U\ch-0\\%version%\\ReSharper-U-%version%.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\ReSharper_U" /t REG_SZ /v "" /d "Open in ReSharper-U - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\ReSharper_U" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\ReSharper_U\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\ReSharper_U" /t REG_SZ /v "" /d "Open with ReSharper-U - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\ReSharper_U" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\ReSharper_U\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\ReSharper_U" /t REG_SZ /v "" /d "Open with ReSharper-U - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\ReSharper_U" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\ReSharper_U\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
