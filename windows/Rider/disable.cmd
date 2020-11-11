@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\Rider"
@reg delete "HKEY_CLASSES_ROOT\*\shell\Rider"
@reg delete "HKEY_CLASSES_ROOT\*\shell\Rider\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Rider"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Rider"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Rider\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Rider"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Rider"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Rider\command"
