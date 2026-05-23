@echo off
title BLACK ZONE
color 0A
cd /d "%~dp0"
echo.
echo   BLACK ZONE - Starting server on port 8080...
echo.
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :8080 ^| findstr LISTENING') do taskkill /F /PID %%a >nul 2>nul
start "" "http://localhost:8080/index.html"
npx http-server -p 8080 -c-1 --cors
