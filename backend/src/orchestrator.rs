pub struct Orchestrator {}

impl Orchestrator {
    pub fn new() -> Self {
        Self {}
    }
    
    pub async fn process_query(&self, query: &str) -> String {
        format!("Processed: {}", query)
    }
}
