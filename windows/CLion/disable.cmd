@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\CLion"
@reg delete "HKEY_CLASSES_ROOT\*\shell\CLion"
@reg delete "HKEY_CLASSES_ROOT\*\shell\CLion\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\CLion"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\CLion"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\CLion\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\CLion"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\CLion"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\CLion\command"
