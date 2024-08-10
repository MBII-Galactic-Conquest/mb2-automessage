@echo off
echo Starting Auto Message Plugin...
start "Auto Message Plugin" /B C:\Python27\python.exe automessage.py
if %ERRORLEVEL% EQU 0 (
    echo Auto Message Plugin started successfully.
) else (
    echo Failed to start Auto Message Plugin. Check if Python 2.7 is installed and in PATH.
)
pause