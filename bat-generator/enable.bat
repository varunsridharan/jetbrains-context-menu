@echo off
SET InstallPath="{installPath}"
SET Version="{version}"
SET AppLocation="{path}"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\{regkey}" /t REG_SZ /v "" /d "Open in {title} - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\{regkey}" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\{regkey}\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\{regkey}" /t REG_SZ /v "" /d "Open with {title} - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\{regkey}" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\{regkey}\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\{regkey}" /t REG_SZ /v "" /d "Open with {title} - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\{regkey}" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\{regkey}\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
