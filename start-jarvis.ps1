# Jarvis-Platform Launcher (PowerShell)
Write-Host "================================" -ForegroundColor Cyan
Write-Host "   Jarvis-Platform Launcher" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan

# Start Rust Backend
Write-Host "
[1/3] Starting Rust Backend..." -ForegroundColor Yellow
$backendJob = Start-Job -ScriptBlock {
    cd "C:\Jarvis-Platform\backend"
    cargo run
}

Start-Sleep 3

# Start Python Orchestrator
Write-Host "[2/3] Starting Python Orchestrator..." -ForegroundColor Yellow
$pythonJob = Start-Job -ScriptBlock {
    cd "C:\Jarvis-Platform\services\local_llm_orchestrator"
    python main.py
}

Start-Sleep 3

# Start Electron Frontend
Write-Host "[3/3] Starting Electron Frontend..." -ForegroundColor Yellow
Start-Process -FilePath "npm" -ArgumentList "start" -WorkingDirectory "C:\Jarvis-Platform\frontend"

Write-Host "
✅ All components started!" -ForegroundColor Green
Write-Host "📁 Backend: http://localhost:50051" -ForegroundColor White
Write-Host "🌐 Frontend: Electron app" -ForegroundColor White
Write-Host "
Press Ctrl+C to stop all services" -ForegroundColor Yellow

try {
    Wait-Event -Timeout 1
} catch {
    # Continue
}
