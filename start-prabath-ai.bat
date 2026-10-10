@echo off
setlocal
cd /d "%~dp0"
title PRABATH AI — Global FAQ Chatbot

echo.
echo  ================================================
echo       PRABATH AI — Global FAQ Chatbot
echo  ================================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo [ERROR] Node.js was not found.
  echo Install Node.js 18 or newer, then reopen this file.
  echo https://nodejs.org/
  pause
  exit /b 1
)

if not exist ".env" (
  copy ".env.example" ".env" >nul
  echo A new .env file has been created.
  echo Add your private Groq API key in Notepad, save the file, and close Notepad.
  start /wait notepad.exe "%~dp0.env"
  echo.
  echo If you added the API key, it is saved for this run.
)

if not exist "node_modules" (
  echo Installing required packages for the first run...
  call npm install
  if errorlevel 1 (
    echo [ERROR] npm install failed. Check your internet connection and try again.
    pause
    exit /b 1
  )
)

echo.
echo Opening http://localhost:3000 in your browser...
start "" cmd /c "timeout /t 2 /nobreak >nul & start http://localhost:3000"
echo Keep this window open while using PRABATH AI.
echo To stop the server, press Ctrl+C in this window.
echo.
call npm start
pause
