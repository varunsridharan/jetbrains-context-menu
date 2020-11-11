@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\PhpStorm"
@reg delete "HKEY_CLASSES_ROOT\*\shell\PhpStorm"
@reg delete "HKEY_CLASSES_ROOT\*\shell\PhpStorm\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\PhpStorm"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\PhpStorm"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\PhpStorm\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\PhpStorm"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\PhpStorm"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\PhpStorm\command"
