const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('jarvisAPI', {
    processInput: (input) => ipcRenderer.invoke('process-input', input)
});
