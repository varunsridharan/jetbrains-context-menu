@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\PyCharm_E"
@reg delete "HKEY_CLASSES_ROOT\*\shell\PyCharm_E"
@reg delete "HKEY_CLASSES_ROOT\*\shell\PyCharm_E\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm_E"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm_E"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm_E\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\PyCharm_E"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\PyCharm_E"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\PyCharm_E\command"
