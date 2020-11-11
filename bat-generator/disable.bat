@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\{regkey}"
@reg delete "HKEY_CLASSES_ROOT\*\shell\{regkey}"
@reg delete "HKEY_CLASSES_ROOT\*\shell\{regkey}\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\{regkey}"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\{regkey}"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\{regkey}\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\{regkey}"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\{regkey}"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\{regkey}\command"
