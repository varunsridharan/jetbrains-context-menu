@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\WebStorm"
@reg delete "HKEY_CLASSES_ROOT\*\shell\WebStorm"
@reg delete "HKEY_CLASSES_ROOT\*\shell\WebStorm\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\WebStorm"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\WebStorm"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\WebStorm\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\WebStorm"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\WebStorm"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\WebStorm\command"
