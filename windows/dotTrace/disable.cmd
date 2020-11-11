@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\dotTrace"
@reg delete "HKEY_CLASSES_ROOT\*\shell\dotTrace"
@reg delete "HKEY_CLASSES_ROOT\*\shell\dotTrace\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\dotTrace"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\dotTrace"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\dotTrace\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\dotTrace"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\dotTrace"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\dotTrace\command"
