@echo off
echo Stopping Auto Message Plugin...

for /f "tokens=2" %%i in ('tasklist /fi "imagename eq python.exe" ^| find /i "python.exe"') do (
    wmic process where "ProcessID=%%i" get CommandLine | find /i "automessage.py" > nul
    if not errorlevel 1 (
        taskkill /F /PID %%i
        if errorlevel 1 (
            echo Failed to stop the Auto Message Plugin.
        ) else (
            echo Auto Message Plugin stopped successfully.
        )
        goto :end
    )
)

echo Auto Message Plugin is not running or could not be detected.

:end
pause