FROM ollama/ollama

WORKDIR /app

EXPOSE 11434

# Start the Ollama server
ENTRYPOINT ["/bin/bash","-c","ollama serve & sleep 5 && ollama run sqlcoder && wait"]