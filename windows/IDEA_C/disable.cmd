@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\IDEA_C"
@reg delete "HKEY_CLASSES_ROOT\*\shell\IDEA_C"
@reg delete "HKEY_CLASSES_ROOT\*\shell\IDEA_C\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\IDEA_C"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\IDEA_C"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\IDEA_C\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\IDEA_C"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\IDEA_C"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\IDEA_C\command"
