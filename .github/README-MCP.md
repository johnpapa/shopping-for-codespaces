# MCP (Model Context Protocol) Setup for Shopping with Codespaces

This directory contains MCP server configurations to enhance AI assistant capabilities when working with this repository.

## Available MCP Servers

### GitHub MCP Server
- **Purpose**: Provides direct access to GitHub repository information, issues, pull requests, and commits
- **Configuration**: `mcp-config.json`
- **Requirements**: GitHub Personal Access Token (automatically available in Codespaces)
- **Benefits**: AI assistants can directly query repository history, issues, and PRs

### Filesystem MCP Server
- **Purpose**: Allows AI assistants to read and understand the project file structure
- **Configuration**: Pre-configured for the repository root
- **Benefits**: Better context awareness of project organization and file relationships

### Web Search MCP Server
- **Purpose**: Enables AI assistants to search for documentation and examples
- **Configuration**: Uses Brave Search API
- **Benefits**: Can find relevant tutorials, documentation, and code examples

## Setup Instructions

### For VS Code with Cline/Claude Dev Extension

1. Install a compatible MCP client extension in VS Code
2. Copy the `mcp-config.json` configuration
3. Set up environment variables:
   ```bash
   export GITHUB_TOKEN="your_github_token"  # Often auto-available in Codespaces
   export BRAVE_API_KEY="your_brave_api_key"  # Optional for web search
   ```

### For Other AI Development Tools

The MCP configuration is compatible with various AI development tools that support the Model Context Protocol. Refer to your specific tool's documentation for setup instructions.

## Benefits for This Repository

1. **Repository Context**: AI assistants understand the Codespaces demo purpose
2. **File Awareness**: Better suggestions based on project structure
3. **GitHub Integration**: Direct access to issues, PRs, and repository metadata
4. **Documentation Access**: Can search for Express.js, EJS, and Node.js examples
5. **Demo Enhancement**: Perfect for showcasing AI-assisted development workflows

## Security Notes

- MCP servers run with limited permissions
- GitHub token should have appropriate scope (typically `repo` for private repos)
- Web search is optional and can be disabled if not needed
- All configurations respect Codespaces security boundaries

## Troubleshooting

- Ensure Node.js and npm are available (standard in Codespaces)
- Verify environment variables are set correctly
- Check that MCP server packages can be installed via npx
- Refer to individual MCP server documentation for specific issues

---

*This setup enhances the AI development experience specifically for this Codespaces demonstration repository.*