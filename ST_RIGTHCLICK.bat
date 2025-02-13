
@echo off
SET st3Path=C:\Program Files\Sublime Text\sublime_text.exe

rem remove original
@reg delete "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"        /f

rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f

rem add it for folders
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f

@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text" /ve /f /d "Open with Sublime Text"
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text" /v "Icon" /f /d "%st3Path%,0"
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text\command" /ve /f /d "%st3Path% \"%%v\""

pause
