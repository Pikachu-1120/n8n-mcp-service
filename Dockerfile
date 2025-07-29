# Use the official n8n-MCP image as base
FROM ghcr.io/czlonkowski/n8n-mcp:latest

# Set working directory
WORKDIR /usr/src/app

# Install any additional dependencies if needed
# (Usually none are required since the image includes everything)

# Expose the port the MCP server listens on
EXPOSE 8000

# Ensure the MCP binary is executable (should already be)
RUN chmod +x /usr/local/bin/n8n-mcp

# Pass through environment variables via Render dashboard
# (No ENV directives needed here if you configure in Render)

# Launch the n8n-MCP server in stdio mode
ENTRYPOINT ["n8n-mcp"]
CMD ["--mode", "stdio"]
