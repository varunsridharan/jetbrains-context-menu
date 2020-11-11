@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\datagrip"
@reg delete "HKEY_CLASSES_ROOT\*\shell\datagrip"
@reg delete "HKEY_CLASSES_ROOT\*\shell\datagrip\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\datagrip"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\datagrip"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\datagrip\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\datagrip"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\datagrip"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\datagrip\command"
