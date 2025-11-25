# Jarvis-Platform 🤖

A sophisticated AI platform for orchestrating MIG (ephemeral) processes with real-time visualization and local LLM integration.

## 🏗️ Architecture

Jarvis-Platform/
├── backend/ # Rust core with gRPC API
├── services/ # Python LLM orchestrator
├── frontend/ # Electron interface
├── storage/ # Artifacts and snapshots
└── models/ # Local AI models (GGUF)
text


## 🚀 Quick Start

### Prerequisites
- Rust 1.91+
- Python 3.11+
- Node.js 18+
- DeepSeek models (GGUF format)

### Installation
1. Clone the repository:
\\\ash
git clone https://github.com/Khushvakht799/Jarvis-Platform.git
cd Jarvis-Platform
\\\

2. Install dependencies:
\\\ash
# Backend
cd backend && cargo build

# Services  
cd ../services/local_llm_orchestrator
pip install -r requirements.txt

# Frontend
cd ../../frontend && npm install
\\\

3. Run the platform:
\\\ash
# Windows
./start-jarvis.bat

# Or manually:
# Terminal 1: cd backend && cargo run
# Terminal 2: cd services/local_llm_orchestrator && python main.py  
# Terminal 3: cd frontend && npm start
\\\

## 🎯 Features

- **MIG Process Orchestration**: Ephemeral computing with automatic cleanup
- **Real-time Visualization**: Live process monitoring in Electron UI
- **Local LLM Integration**: DeepSeek models for code generation and analysis
- **Vector Snapshots**: Multi-dimensional state preservation
- **Multi-layer Architecture**: Clean separation of concerns

## 🔧 Components

### Backend (Rust)
- gRPC API server
- MIG process scheduler
- Memory management
- Vector snapshot engine

### Orchestrator (Python) 
- Local LLM management
- Task routing and distribution
- Model loading and inference

### Frontend (Electron)
- Smart input with auto-completion
- Real-time process visualization
- Artifact display and management

## 📁 Project Structure

See [ARCHITECTURE.md](docs/architecture.md) for detailed documentation.

## 🛠️ Development

### Adding New MIG Processes
1. Define process in \ackend/src/runtime/\
2. Add task handler in \services/local_llm_orchestrator/\
3. Update visualization in \rontend/src/components/\

### Configuration
Edit \config.json\ for:
- Model paths and parameters
- Runtime settings
- Storage locations

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## 📄 License

MIT License - see LICENSE file for details.

## 🙏 Acknowledgments

- DeepSeek for open-source models
- Rust community for excellent async ecosystem
- Electron team for cross-platform desktop apps
