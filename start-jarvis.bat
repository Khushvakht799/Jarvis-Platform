@echo off
chcp 65001 > nul
echo ================================
echo    Jarvis-Platform Launcher
echo ================================
echo.

echo [1/3] Starting Rust Backend...
cd /d "C:\Jarvis-Platform\backend"
start "Jarvis Backend" cmd /k "cargo run"

timeout /t 3 /nobreak > nul

echo [2/3] Starting Python Orchestrator...
cd /d "C:\Jarvis-Platform\services\local_llm_orchestrator" 
start "Jarvis LLM Orchestrator" cmd /k "python main.py"

timeout /t 3 /nobreak > nul

echo [3/3] Starting Electron Frontend...
cd /d "C:\Jarvis-Platform\frontend"
start "Jarvis Frontend" cmd /k "npm start"

echo.
echo ? All components started!
echo ?? Backend: http://localhost:50051
echo ?? Frontend: Electron app
echo.
echo Press any key to close this launcher...
pause > nul
