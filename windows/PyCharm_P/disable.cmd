@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\PyCharm_P"
@reg delete "HKEY_CLASSES_ROOT\*\shell\PyCharm_P"
@reg delete "HKEY_CLASSES_ROOT\*\shell\PyCharm_P\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm_P"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm_P"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm_P\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\PyCharm_P"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\PyCharm_P"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\PyCharm_P\command"
