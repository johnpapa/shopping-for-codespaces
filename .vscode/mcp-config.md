# MCP (Model Context Protocol) Configuration

## Overview
This file documents the MCP server configuration for enhanced AI assistance with GitHub integration and development workflows.

## GitHub MCP Server
The GitHub MCP server provides enhanced GitHub integration for AI assistants, enabling:
- Repository information access
- Issue and PR management context
- Code review assistance
- Branch and commit information

### Configuration
For VS Code with GitHub Copilot integration:

```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "${GITHUB_TOKEN}"
      }
    }
  }
}
```

### Capabilities
- Access to repository metadata
- Issue and pull request information
- Code search across repositories
- Commit history and diff access
- Branch management information

## Usage in Shopping with Codespaces

### Repository Context
The GitHub MCP server enhances AI understanding of:
- Project structure and purpose
- Open issues and feature requests
- Recent commits and changes
- Collaboration patterns
- Demo workflow requirements

### Development Assistance
Enhanced AI capabilities for:
- Code suggestions based on project history
- Issue-aware feature development
- PR review and improvement suggestions
- Branch management recommendations
- Documentation updates

## Installation in Codespaces

### Automatic Setup
Add to `.devcontainer/devcontainer.json`:
```json
{
  "postStartCommand": "npm install -g @modelcontextprotocol/server-github"
}
```

### Manual Setup
```bash
# Install GitHub MCP server
npm install -g @modelcontextprotocol/server-github

# Set up environment variable
export GITHUB_TOKEN="your_github_token"
```

## Security Considerations
- Use GitHub Personal Access Tokens with minimal required scopes
- Avoid committing tokens to repository
- Use environment variables or VS Code secrets
- Regularly rotate access tokens

## Demo Integration
The MCP server enhances the demo experience by:
- Providing context about the shopping app's purpose
- Understanding the Codespaces workflow
- Suggesting improvements based on similar projects
- Helping with GitHub-specific tasks during demos

## Troubleshooting
- Ensure GitHub token has appropriate permissions
- Check network connectivity in Codespaces
- Verify MCP server installation
- Monitor token rate limits

## Alternative MCP Servers
Consider these additional servers for enhanced development:

### Filesystem MCP Server
```json
{
  "filesystem": {
    "command": "npx",
    "args": ["-y", "@modelcontextprotocol/server-filesystem"],
    "env": {
      "ALLOWED_DIRECTORIES": "/workspaces"
    }
  }
}
```

### Brave Search MCP Server
```json
{
  "brave-search": {
    "command": "npx",
    "args": ["-y", "@modelcontextprotocol/server-brave-search"],
    "env": {
      "BRAVE_API_KEY": "${BRAVE_API_KEY}"
    }
  }
}
```

## Future Enhancements
- Custom MCP server for shopping app domain
- Integration with package managers
- Code quality and security scanning
- Automated testing assistance