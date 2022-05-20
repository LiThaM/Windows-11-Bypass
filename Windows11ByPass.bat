@echo off
title iChip Bypass Windows 11
REM Bypass Windows 11
REM Author: Alejandro Castro
REM Latest update: 20/05/2022
cls
goto :elevation
:elevation
net session >nul 2>&1
if %errorLevel% == 0 (
cls && goto :main
) else (
echo Ejecuta como Administrador Por favor.
pause >nul && exit
)
goto :eof

:main
echo iChip ByPass Windows 11 
echo.
echo.
echo KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK#
echo KKKKKKKKKKKKKKK    iKKKKKKKKKKKKKKKKKKKKKKKKKKKKK#
echo KKKKKKKKKKKKKK ;KKK KKKKKKKKKKKKKKKKKKKKKKKKKKKKK#
echo KKKKKKKKKK KKK KKKK KKK KKK KKK KKK    KKKKKKKKKK#
echo KKKKKKKKKK KKK KKKKfKKK KKK KKK KKK KKK KKKKKKKKK#
echo KKKKKKKKKK KKK KKKKKKKK KKK KKK KKK KKK KKKKKKKKK#
echo KKKKKKKKKK KKK KKKKKKKK KKK KKK KKK KKK KKKKKKKKK#
echo KKKKKKKKKK KKK KKKKKKKK KKK KKK KKK KK fKKKKKKKKK#
echo KKKKKKKKKK KKK KKKK KKK KKK KKK KKK   fKKKKKKKKKK#
echo KKKKKKKKKK KKK EKKK KKK KKK KKK KKK KKKKKKKKKKKKK#
echo KKKKKKKKKK KKK,  :  KKK KKK KKK KKK KKKKKKKKKKKKK#
echo KKKKKKKKKKKKKKKKKDKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK#
echo.
echo  Repo: https://github.com/LiThaM/Windows-11-Bypass
echo.
pause
echo Bypass para Windows 11:
echo.
echo  * Comprobacion del CPU / Bypass CPU Check 
echo  * Comprobacion de Almacenamiento /Bypass Storage Check 
echo  * Comprobacion de Ram / Bypass RAM Check
echo  * Comprobacion del TPM /  Bypass TPM Check
echo  * Comprobacion de Arranque Seguro /  Bypass SecureBoot Check
echo  * Habilito actualizacion para equpos no soportados / Allow Upgrade With Unsupported TPM or CPU
echo.
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassCPUCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassStorageCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassRAMCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassTPMCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassSecureBootCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup /v AllowUpgradesWithUnsupportedTPMOrCPU /f /t REG_DWORD /d 00000001
echo.
pause && cls
goto :eof

:end
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof
