@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.7660.52"
SET AppLocation="IDEA-E\ch-0\\%version%\\bin\idea64.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\IDEA_E" /t REG_SZ /v "" /d "Open in IDEA-E - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\IDEA_E" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\IDEA_E\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\IDEA_E" /t REG_SZ /v "" /d "Open with IDEA-E - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\IDEA_E" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\IDEA_E\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\IDEA_E" /t REG_SZ /v "" /d "Open with IDEA-E - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\IDEA_E" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\IDEA_E\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
