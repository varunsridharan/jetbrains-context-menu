@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\dotMemory"
@reg delete "HKEY_CLASSES_ROOT\*\shell\dotMemory"
@reg delete "HKEY_CLASSES_ROOT\*\shell\dotMemory\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\dotMemory"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\dotMemory"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\dotMemory\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\dotMemory"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\dotMemory"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\dotMemory\command"
