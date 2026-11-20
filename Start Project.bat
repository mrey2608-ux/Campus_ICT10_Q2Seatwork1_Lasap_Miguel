@echo off
setlocal
cd /d "%~dp0"

where py >nul 2>nul
if not errorlevel 1 (
    set "PYTHON=py"
) else (
    where python >nul 2>nul
    if errorlevel 1 (
        echo Python was not found. Install Python, then run this file again.
        pause
        exit /b 1
    )
    set "PYTHON=python"
)

echo Starting the project web server...
start "Element Archive web server" /min %PYTHON% -m http.server 8000 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:8000/index.html"

echo The project is running at http://127.0.0.1:8000/index.html
echo Keep the minimized server window open while using the project.
echo Close that window to stop the server.
pause
