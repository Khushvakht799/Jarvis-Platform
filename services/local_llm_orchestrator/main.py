#!/usr/bin/env python3
"""
Local LLM Orchestrator for Jarvis-Platform
Uses mock implementation until llama-cpp-python is fixed
"""

try:
    from llama_cpp import Llama
    HAS_LLAMA = True
    print(\"✅ Using real llama-cpp-python\")
except ImportError:
    HAS_LLAMA = False
    print(\"⚠️  Using mock implementation - llama-cpp-python not available\")

if HAS_LLAMA:
    # Import real implementation when available
    from main import main
else:
    # Use mock implementation
    from mock_orchestrator import main

if __name__ == \"__main__\":
    import asyncio
    asyncio.run(main())
