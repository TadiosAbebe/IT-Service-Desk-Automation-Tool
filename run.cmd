@ECHO OFF
SET ThisScriptDirectory=%~dp0
SET PowerShellScriptPath=%ThisScriptDirectory%res/main.ps1
@REM PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process Powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%PowerShellScriptPath%""' -Verb RunAs}";
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%'";