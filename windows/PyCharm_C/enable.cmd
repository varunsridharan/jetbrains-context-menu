@echo off
SET InstallPath="E:\development-tools\apps"
SET Version="202.7660.27"
SET AppLocation="PyCharm-C\ch-0\\%version%\\bin\pycharm64.exe"

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\PyCharm_C" /t REG_SZ /v "" /d "Open in PyCharm-C - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\PyCharm_C" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\PyCharm_C\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f

echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm_C" /t REG_SZ /v "" /d "Open with PyCharm-C - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm_C" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm_C\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\PyCharm_C" /t REG_SZ /v "" /d "Open with PyCharm-C - %Version%"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\PyCharm_C" /t REG_EXPAND_SZ /v "Icon" /d "%InstallPath%\\%AppLocation%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\PyCharm_C\command" /t REG_SZ /v "" /d "%InstallPath%\\%AppLocation% \"%%1\"" /f
