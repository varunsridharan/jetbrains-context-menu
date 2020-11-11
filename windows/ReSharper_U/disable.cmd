@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\ReSharper_U"
@reg delete "HKEY_CLASSES_ROOT\*\shell\ReSharper_U"
@reg delete "HKEY_CLASSES_ROOT\*\shell\ReSharper_U\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\ReSharper_U"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\ReSharper_U"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\ReSharper_U\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\ReSharper_U"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\ReSharper_U"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\ReSharper_U\command"
