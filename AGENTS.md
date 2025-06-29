# AI Agents and MCP Integration Guide

This document provides comprehensive guidance for using AI agents and Model Context Protocol (MCP) servers with the Shopping for Codespaces repository.

## Overview

This repository is enhanced with AI-powered development tools and MCP server integrations to provide intelligent assistance for developers working with GitHub Codespaces and modern development workflows.

## Custom Instructions Files

### Cursor IDE (.cursorrules)
The repository includes a `.cursorrules` file that provides context-aware instructions for Cursor IDE's AI assistant. This ensures the AI understands:
- Project structure and purpose
- Development guidelines and best practices
- Demo context and educational goals
- Common tasks and workflows

### Other AI Editors
For other AI-powered editors, you can adapt the instructions from `.cursorrules`:
- **Aider**: Create `.aider.conf.yml` with project context
- **Continue**: Add instructions to VS Code settings
- **GitHub Copilot**: Uses repository context automatically

## MCP (Model Context Protocol) Servers

MCP servers extend AI capabilities by providing access to external tools and data sources.

### Recommended MCP Servers for This Repository

#### 1. GitHub MCP Server
Provides GitHub integration for AI assistants.

**Installation:**
```bash
npm install @modelcontextprotocol/server-github
```

**Configuration:**
```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "your_token_here"
      }
    }
  }
}
```

**Capabilities:**
- Repository information and file contents
- Issue and pull request management
- Branch operations
- Commit history analysis
- Code search across repositories

#### 2. Filesystem MCP Server
Provides local filesystem access for AI assistants.

**Installation:**
```bash
npm install @modelcontextprotocol/server-filesystem
```

**Configuration:**
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-filesystem", "/path/to/allowed/directory"]
    }
  }
}
```

#### 3. Web Search MCP Server
Enables AI to search for documentation and resources.

**Installation:**
```bash
npm install @modelcontextprotocol/server-brave-search
```

**Configuration:**
```json
{
  "mcpServers": {
    "brave-search": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-brave-search"],
      "env": {
        "BRAVE_API_KEY": "your_api_key_here"
      }
    }
  }
}
```

## VS Code Integration

### AI-Enhanced Settings
Add these settings to `.vscode/settings.json` for enhanced AI integration:

```json
{
  "github.copilot.enable": {
    "*": true,
    "yaml": true,
    "plaintext": true,
    "markdown": true
  },
  "github.copilot.chat.enabled": true,
  "github.copilot.chat.welcomeMessage": "never",
  "workbench.commandPalette.experimental.suggestCommands": true,
  "editor.inlineSuggest.enabled": true,
  "editor.suggest.showInlineDetails": true
}
```

### Recommended Extensions
For optimal AI-assisted development:

1. **GitHub Copilot** - AI pair programming
2. **GitHub Copilot Chat** - Conversational AI assistance
3. **Continue** - Open-source AI coding assistant
4. **Cursor** - AI-first code editor (alternative to VS Code)

## Claude Desktop Integration

### MCP Configuration for Claude Desktop
Create or update `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "your_token_here"
      }
    },
    "filesystem": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-filesystem", "/path/to/shopping-for-codespaces"]
    }
  }
}
```

**Location of config file:**
- **macOS**: `~/Library/Application\ Support/Claude/claude_desktop_config.json`
- **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`
- **Linux**: `~/.config/Claude/claude_desktop_config.json`

## Usage Examples

### With GitHub MCP Server
Ask AI assistants to:
- "Show me the recent commits to this repository"
- "Create a new issue for the bug I just described"
- "List all open pull requests"
- "Search for files that contain product data"

### With Filesystem MCP Server
Ask AI assistants to:
- "Read the package.json file and explain the dependencies"
- "Show me the structure of the views directory"
- "Create a new product in the products.json file"
- "List all JavaScript files in the project"

### With Web Search MCP Server
Ask AI assistants to:
- "Find documentation for Express.js routing"
- "Search for Bulma CSS grid examples"
- "Look up best practices for Node.js error handling"

## Best Practices

### Security
- Use environment variables for API keys
- Limit filesystem access to project directory only
- Regularly rotate GitHub personal access tokens
- Review MCP server permissions carefully

### Performance
- Only enable MCP servers you actively use
- Configure appropriate timeouts for external services
- Monitor resource usage in Codespaces

### Development Workflow
1. Use AI for code suggestions and explanations
2. Leverage MCP servers for context-aware assistance
3. Combine AI insights with manual code review
4. Test AI-generated code thoroughly

## Troubleshooting

### Common Issues
1. **MCP Server not connecting**: Check API keys and network connectivity
2. **Filesystem access denied**: Verify path permissions
3. **GitHub API rate limits**: Use authenticated requests with personal access token

### Debugging
- Check MCP server logs in Claude Desktop
- Verify configuration file syntax
- Test MCP servers independently
- Monitor API usage and limits

## Contributing

When contributing to this repository:
1. Update this guide if you add new MCP servers
2. Test AI integrations in Codespaces environment
3. Consider the demo/educational context
4. Document any new AI-enhanced workflows

## Resources

- [MCP Documentation](https://modelcontextprotocol.io/)
- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [Claude Desktop MCP Guide](https://claude.ai/docs/mcp)
- [VS Code AI Extensions](https://marketplace.visualstudio.com/search?term=ai&target=VSCode)