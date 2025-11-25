mod orchestrator;
mod runtime;
mod memory;
mod api;

use log::info;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    env_logger::init();
    info!("🚀 Jarvis Backend starting...");
    
    // Initialize core modules
    let orchestrator = orchestrator::Orchestrator::new();
    let runtime = runtime::RuntimeVM::new();
    let memory_manager = memory::MemoryManager::new();
    
    info!("✅ Core modules initialized");
    
    // Start gRPC server
    api::grpc_server::start_server().await?;
    
    Ok(())
}
