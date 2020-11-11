@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\Goland"
@reg delete "HKEY_CLASSES_ROOT\*\shell\Goland"
@reg delete "HKEY_CLASSES_ROOT\*\shell\Goland\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Goland"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Goland"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Goland\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Goland"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Goland"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Goland\command"
