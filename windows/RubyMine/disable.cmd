@echo off

echo Adding file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\RubyMine"
@reg delete "HKEY_CLASSES_ROOT\*\shell\RubyMine"
@reg delete "HKEY_CLASSES_ROOT\*\shell\RubyMine\command"

echo Adding within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\RubyMine"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\RubyMine"
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\RubyMine\command"

echo Adding folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\RubyMine"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\RubyMine"
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\RubyMine\command"
