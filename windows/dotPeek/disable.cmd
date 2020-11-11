@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\dotPeek"
@reg delete "HKEY_CLASSES_ROOT\*\shell\dotPeek"
@reg delete "HKEY_CLASSES_ROOT\*\shell\dotPeek\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\dotPeek"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\dotPeek"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\dotPeek\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\dotPeek"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\dotPeek"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\dotPeek\command"
