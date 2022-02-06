@echo off
:: change to 0 to keep configured KMS cache upon removal (recommended only if you plan to reinstall)
set ClearKMSCache=1

:: ##################################################################
:: # NORMALY THERE IS NO NEED TO CHANGE ANYTHING BELOW THIS COMMENT #
:: ##################################################################

set KMS_IP=172.16.0.2
set KMS_Port=1688
set KMS_Emulation=1
set Unattend=1
set Silent=0
set Logger=0
set ForceIns=0
set ForceRem=0
set _Debug=0

set "SysPath=%SystemRoot%\System32"
if exist "%SystemRoot%\Sysnative\reg.exe" (set "SysPath=%SystemRoot%\Sysnative")
set "Path=%SysPath%;%SystemRoot%;%SysPath%\Wbem;%SysPath%\WindowsPowerShell\v1.0\"
set "_err===== ERROR ===="
set "xOS=x64"
if /i %PROCESSOR_ARCHITECTURE%==x86 (if not defined PROCESSOR_ARCHITEW6432 set "xOS=Win32")

set "_args=%*"
if not defined _args goto :NoProgArgs
set _args=%_args:"=%
for %%A in (%_args%) do (
if /i "%%A"=="/d" (set _Debug=1
) else if /i "%%A"=="/u" (set Unattend=1
) else if /i "%%A"=="/s" (set Silent=1
) else if /i "%%A"=="/l" (set Logger=1
) else if /i "%%A"=="/i" (set ForceIns=1&set ForceRem=0
) else if /i "%%A"=="/r" (set ForceIns=0&set ForceRem=1
) else if /i "%%A"=="/k" (set ClearKMSCache=0
)
)
if %ForceIns% EQU 1 set Unattend=1
if %ForceRem% EQU 1 set Unattend=1

:NoProgArgs
reg query HKU\S-1-5-19 >nul 2>&1 || goto :E_Admin
if %Silent% EQU 1 (
set Unattend=1
)
set "_run=nul"
if %Logger% EQU 1 (
set _run="%~dpn0.log"
)

set "_temp=%SystemRoot%\Temp"
set "_log=%~dpn0"
set "_work=%~dp0"
if "%_work:~-1%"=="\" set "_work=%_work:~0,-1%"
setlocal EnableDelayedExpansion

if %_Debug% EQU 0 (
  set "_Nul1=1>nul"
  set "_Nul2=2>nul"
  set "_Nul6=2^>nul"
  set "_Nul3=1>nul 2>nul"
  set "_Pause=pause >nul"
  if %Unattend% EQU 1 set "_Pause="
  if %Silent% EQU 0 (call :Begin) else (call :Begin >!_run! 2>&1)
) else (
  set "_Nul1="
  set "_Nul2="
  set "_Nul6="
  set "_Nul3="
  set "_Pause="
  if %Silent% EQU 0 (
  echo.
  echo Running in Debug Mode...
  echo The window will be closed when finished
  )
  copy /y nul "!_work!\#.rw" 1>nul 2>nul && (if exist "!_work!\#.rw" del /f /q "!_work!\#.rw") || (set "_log=!_temp!\%~n0")
  @echo on
  @prompt $G
  @call :Begin >"!_log!.tmp" 2>&1 &cmd /u /c type "!_log!.tmp">"!_log!_Debug.log"&del "!_log!.tmp"
)
@exit /b

:Begin
set "IFEO=HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options"
set "OSPP=SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
set "SPPk=SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
set _Hook="%SysPath%\SppExtComObjHook.dll"
set w7inf="%SystemRoot%\Migration\WTR\KMS_VL_ALL.inf"
set "_TaskEx=\Microsoft\Windows\SoftwareProtectionPlatform\SvcTrigger"
set "_TaskOs=\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon"
set "line============================================================="
color 07
if %Unattend% EQU 0 title Auto Renewal Setup
if %Silent% EQU 0 if %_Debug% EQU 0 mode con cols=98 lines=28

for /f "tokens=6 delims=[]. " %%G in ('ver') do set winbuild=%%G
set SSppHook=0
if %winbuild% LSS 9200 for /f %%A in ('dir /b /ad %SysPath%\spp\tokens\skus') do (
  if exist "%SysPath%\spp\tokens\skus\%%A\*VLKMS*.xrm-ms" set SSppHook=1
  if exist "%SysPath%\spp\tokens\skus\%%A\*VLBA*.xrm-ms" set SSppHook=1
)
set OsppHook=1
sc query osppsvc %_Nul3%
if %errorlevel% equ 1060 set OsppHook=0

  set OffVer="%IFEO%\osppsvc.exe"
if %winbuild% GEQ 9200 (
  set SSppHook=1
  set OSType=Win8
  set SppVer="%IFEO%\SppExtComObj.exe"
) else if %winbuild% GEQ 7600 (
  set OSType=Win7
  set SppVer="%IFEO%\sppsvc.exe"
) else (
  goto :UnsupportedVersion
)

if %ForceIns% EQU 1 goto :inst
if %ForceRem% EQU 1 goto :remv
if exist %_Hook% (
dir /b /al %_Hook% %_Nul3% || goto :remv
)
reg query %SppVer% %_Nul3% && goto :remv
if not exist "!_work!\bin\!xOS!.dll" goto :E_DLL

:inst
echo.
if %_Debug% NEQ 0 goto :pinst
if %Unattend% NEQ 0 (
echo Mode: Installation
goto :pinst
)
choice /C YN /N /M "Local KMS Emulator will be installed on your computer. Continue? [y/n]: "
if errorlevel 2 exit /b
:pinst
echo.
echo %line%
call :StopService sppsvc
if %OsppHook% NEQ 0 call :StopService osppsvc
if %winbuild% GEQ 9600 (
  reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v NoGenTicket /t REG_DWORD /d 1 %_Nul3%
  WMIC /NAMESPACE:\\root\Microsoft\Windows\Defender PATH MSFT_MpPreference call Add ExclusionPath=%_Hook% %_Nul3% && set "AddExc= and Windows Defender exclusion"
)
echo.
echo Adding File%AddExc%...
echo %_Hook%
for %%# in (SppExtComObjHookAvrf.dll,SppExtComObjHook.dll,SppExtComObjPatcher.dll,SppExtComObjPatcher.exe) do (
  if exist "%SysPath%\%%#" del /f /q "%SysPath%\%%#" %_Nul3%
)
copy /y "!_work!\bin\!xOS!.dll" %_Hook% %_Nul3% || (echo Failed&goto :END)
echo.
echo Adding Registry Keys...
if %OSType% EQU Win8 (
echo %SppVer%
call :CreateIFEOEntry SppExtComObj.exe
)
if %OSType% EQU Win7 if %SSppHook% NEQ 0 (
echo %SppVer%
call :CreateIFEOEntry sppsvc.exe
call :CreateIFEOEntry SppExtComObj.exe
if not exist %w7inf% (
  echo.
  echo Adding migration fail-safe...
  %w7inf%
  if not exist "%SystemRoot%\Migration\WTR" md "%SystemRoot%\Migration\WTR"
  (
  echo [WTR]
  echo Name="KMS_VL_ALL"
  echo.
  echo [WTR.W8]
  echo NotifyUser="No"
  echo.
  echo [System.Registry]
  echo "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc.exe [*]"
  )>%w7inf%
  )
)
echo %OffVer%
call :CreateIFEOEntry osppsvc.exe
if %winbuild% GEQ 9200 call :CreateTask
if %winbuild% GEQ 9200 schtasks /query /tn "%_TaskEx%" %_Nul3% && (
echo.
echo Adding Schedule Task...
echo "%_TaskEx%"
)
echo.
echo %line%
echo.
echo Done.
echo.
echo It is recommended to exclude this file in the Antivirus protection.
echo "%SystemRoot%\System32\SppExtComObjHook.dll"
echo.
echo Now run the file Activate.cmd to complete the Auto Renewal Activation.
goto :END

:remv
echo.
if %_Debug% NEQ 0 goto :premv
if %Unattend% NEQ 0 (
echo Mode: Removal
goto :premv
)
choice /C YN /N /M "Local KMS Emulator will be removed from your computer. Continue? [y/n]: "
if errorlevel 2 exit /b
:premv
echo.
echo %line%
call :StopService sppsvc
if %OsppHook% NEQ 0 call :StopService osppsvc
if %winbuild% GEQ 9600 (
  reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /f %_Nul3%
  WMIC /NAMESPACE:\\root\Microsoft\Windows\Defender PATH MSFT_MpPreference call Remove ExclusionPath=%_Hook% %_Nul3% && set "RemExc= and Windows Defender exclusions"
)
echo.
echo Removing Files%RemExc%...
for %%# in (SppExtComObjHookAvrf.dll,SppExtComObjHook.dll,SppExtComObjPatcher.dll,SppExtComObjPatcher.exe) do if exist "%SysPath%\%%#" (
  echo "%SystemRoot%\System32\%%#"
  del /f /q "%SysPath%\%%#"
)
if exist %w7inf% (
echo %w7inf%
del /f /q %w7inf%
)
echo.
echo Removing Registry Keys...
for %%# in (SppExtComObj.exe,sppsvc.exe,osppsvc.exe) do reg query "%IFEO%\%%#" %_Nul3% && (
  echo "%IFEO%\%%#"
  call :RemoveIFEOEntry %%#
)
if %winbuild% GEQ 9200 schtasks /query /tn "%_TaskEx%" %_Nul3% && (
echo.
echo Removing Schedule Task...
echo "%_TaskEx%"
schtasks /delete /f /tn "%_TaskEx%" %_Nul3%
)
if %ClearKMSCache% EQU 1 (
echo.
echo Clearing KMS Cache...
call :cKMS SoftwareLicensingProduct SoftwareLicensingService %_Nul3%
if %OsppHook% NEQ 0 call :cKMS OfficeSoftwareProtectionProduct OfficeSoftwareProtectionService %_Nul3%
call :cREG %_Nul3%
)
echo.
echo %line%
echo.
echo Done.
goto :END

:StopService
sc query %1 | find /i "STOPPED" %_Nul1% || net stop %1 /y %_Nul3%
sc query %1 | find /i "STOPPED" %_Nul1% || sc stop %1 %_Nul3%
goto :eof

:CreateIFEOEntry
reg delete "%IFEO%\%1" /f /v Debugger %_Nul3%
reg add "%IFEO%\%1" /f /v VerifierDlls /t REG_SZ /d "SppExtComObjHook.dll" %_Nul3% || (echo Failed&del /f /q %_Hook%&goto :END)
reg add "%IFEO%\%1" /f /v GlobalFlag /t REG_DWORD /d 256 %_Nul3%
reg add "%IFEO%\%1" /f /v KMS_Emulation /t REG_DWORD /d %KMS_Emulation% %_Nul3%
if /i %1 EQU osppsvc.exe (
reg add "HKLM\%OSPP%" /f /v KeyManagementServiceName /t REG_SZ /d %KMS_IP% %_Nul3%
reg add "HKLM\%OSPP%" /f /v KeyManagementServicePort /t REG_SZ /d %KMS_Port% %_Nul3%
)
if /i %1 NEQ osppsvc.exe (
if %OSType% EQU Win8 reg delete "%IFEO%\sppsvc.exe" /f %_Nul3%
)
goto :eof

:RemoveIFEOEntry
if /i %1 NEQ osppsvc.exe (
reg delete "%IFEO%\%1" /f %_Nul3%
goto :eof
)
if /i %1 EQU osppsvc.exe if %OsppHook% EQU 0 (
reg delete "%IFEO%\%1" /f %_Nul3%
goto :eof
)
for %%A in (Debugger,VerifierDlls,GlobalFlag,KMS_Emulation,KMS_ActivationInterval,KMS_RenewalInterval,Office2010,Office2013,Office2016,Office2019) do reg delete "%IFEO%\%1" /f /v %%A %_Nul3%
goto :eof

:CreateTask
schtasks /query /tn "%_TaskEx%" %_Nul3% || (
  schtasks /query /tn "%_TaskOs%" %_Nul3% && (
    schtasks /query /tn "%_TaskOs%" /xml >"!_temp!\SvcTrigger.xml"
    schtasks /create /tn "%_TaskEx%" /xml "!_temp!\SvcTrigger.xml" /f %_Nul3%
    schtasks /change /tn "%_TaskEx%" /enable %_Nul3%
    del /f /q "!_temp!\SvcTrigger.xml" %_Nul3%
  )
)
schtasks /query /tn "%_TaskEx%" %_Nul3% || (
  if exist "!_work!\bin\SvcTrigger.xml" schtasks /create /tn "%_TaskEx%" /xml "!_work!\bin\SvcTrigger.xml" /f %_Nul3%
)
goto :eof

:cKMS
set spp=%1
set sps=%2
for /f "tokens=2 delims==" %%G in ('"wmic path %spp% where (Description like '%%KMSCLIENT%%') get ID /VALUE" %_Nul6%') do (set app=%%G&call :cAPP)
for /f "tokens=2 delims==" %%A in ('"wmic path %sps% get Version /VALUE"') do set ver=%%A
wmic path %sps% where version='%ver%' call ClearKeyManagementServiceMachine
wmic path %sps% where version='%ver%' call ClearKeyManagementServicePort
wmic path %sps% where version='%ver%' call DisableKeyManagementServiceDnsPublishing 1
wmic path %sps% where version='%ver%' call DisableKeyManagementServiceHostCaching 1
goto :eof

:cAPP
wmic path %spp% where ID='%app%' call ClearKeyManagementServiceMachine
wmic path %spp% where ID='%app%' call ClearKeyManagementServicePort
goto :eof

:cREG
reg delete "HKLM\%SPPk%\55c92734-d682-4d71-983e-d6ec3f16059f" /f
reg delete "HKLM\%SPPk%\0ff1ce15-a989-479d-af46-f275c6370663" /f
reg delete "HKLM\%SPPk%" /f /v KeyManagementServiceName
reg delete "HKLM\%SPPk%" /f /v KeyManagementServicePort
reg delete "HKU\S-1-5-20\%SPPk%\55c92734-d682-4d71-983e-d6ec3f16059f" /f
reg delete "HKU\S-1-5-20\%SPPk%\0ff1ce15-a989-479d-af46-f275c6370663" /f
reg delete "HKLM\%OSPP%\59a52881-a989-479d-af46-f275c6370663" /f
reg delete "HKLM\%OSPP%\0ff1ce15-a989-479d-af46-f275c6370663" /f
reg delete "HKLM\%OSPP%" /f /v KeyManagementServiceName
reg delete "HKLM\%OSPP%" /f /v KeyManagementServicePort
if %OsppHook% EQU 0 (
reg delete "HKLM\%OSPP%" /f
reg delete "HKU\S-1-5-20\%OSPP%" /f
)
goto :eof

:E_Admin
echo %_err%
echo This script require administrator privileges.
echo To do so, right click on this script and select 'Run as administrator'
echo.
echo Press any key to exit.
if %_Debug% EQU 1 goto :eof
if %Unattend% EQU 1 goto :eof
pause >nul
goto :eof

:E_DLL
echo %_err%
echo Required file !xOS!.dll is not found.
echo Make sure folder path is simple and Antivirus protection is OFF or excluded.
goto :END

:UnsupportedVersion
echo %_err%
echo Unsupported OS version Detected.
echo Project is supported only for Windows 7/8/8.1/10 and their Server equivalent.
:END
echo.
if %Unattend% EQU 0 echo Press any key to exit.
%_Pause%
goto :eof