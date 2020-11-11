@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.7660.39"
SET AppLocation="RubyMine\ch-0\\%version%\\bin\rubymine64.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\RubyMine" /t REG_SZ /v "" /d "Open in RubyMine - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\RubyMine" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\RubyMine\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\RubyMine" /t REG_SZ /v "" /d "Open with RubyMine - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\RubyMine" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\RubyMine\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\RubyMine" /t REG_SZ /v "" /d "Open with RubyMine - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\RubyMine" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\RubyMine\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
