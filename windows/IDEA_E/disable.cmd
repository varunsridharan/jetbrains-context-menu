@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\IDEA_E"
@reg delete "HKEY_CLASSES_ROOT\*\shell\IDEA_E"
@reg delete "HKEY_CLASSES_ROOT\*\shell\IDEA_E\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\IDEA_E"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\IDEA_E"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\IDEA_E\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\IDEA_E"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\IDEA_E"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\IDEA_E\command"
