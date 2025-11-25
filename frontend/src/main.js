const { app, BrowserWindow, ipcMain } = require('electron');
const path = require('path');

let mainWindow;

function createWindow() {
    mainWindow = new BrowserWindow({
        width: 1200,
        height: 800,
        webPreferences: {
            nodeIntegration: false,
            contextIsolation: true,
            preload: path.join(__dirname, 'preload.js')
        }
    });

    mainWindow.loadFile('src/index.html');
    
    // Open DevTools for debugging
    mainWindow.webContents.openDevTools();
}

ipcMain.handle('process-input', async (event, userInput) => {
    console.log('Processing input:', userInput);
    
    // Simulate processing delay
    await new Promise(resolve => setTimeout(resolve, 1500));
    
    return {
        success: true,
        data: {
            result: 'Successfully processed: ' + userInput,
            migProcesses: [
                { name: 'Intent Analysis', status: 'completed' },
                { name: 'Execution Planning', status: 'completed' },
                { name: 'MIG Generation', status: 'running' },
                { name: 'Result Compilation', status: 'pending' }
            ]
        }
    };
});

app.whenReady().then(createWindow);

app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') {
        app.quit();
    }
});

app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
        createWindow();
    }
});

console.log('🚀 Electron app starting...');
