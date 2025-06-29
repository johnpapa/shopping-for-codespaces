# AI Agents Configuration for Shopping with Codespaces

## Project Context for AI Assistants
This file provides context and instructions for AI coding assistants, language servers, and intelligent editors working with this shopping demo application.

## Project Purpose
- **Primary Goal**: Demonstrate GitHub Codespaces and Copilot capabilities
- **Target Audience**: Developers learning cloud-based development workflows
- **Demo Scenario**: Rapid web app development and debugging
- **Key Learning Points**: github.dev → Codespaces transition, collaborative development

## Technology Stack Context
```yaml
Runtime: Node.js
Framework: Express.js
Template Engine: EJS
CSS Framework: Bulma
Package Manager: npm
Development Tool: nodemon
IDE Target: VS Code (github.dev/Codespaces)
```

## File Importance & Roles

### Critical Files (High Impact)
- `index.js` - Main application logic, routing
- `products.json` - Demo data, frequently modified in demos
- `views/index.ejs` - Main template, UI structure
- `package.json` - Dependencies and scripts

### Configuration Files
- `.vscode/settings.json` - VS Code workspace settings
- `copilot-instructions.md` - Copilot-specific guidance
- This file - General AI assistant context

### Demo Assets
- `public/css/main.css` - Styling (mostly Bulma)
- `public/images/` - Static assets
- `.docs/` - Demo screenshots and documentation

## Development Patterns to Recognize

### Demo Flow Pattern
1. **github.dev Phase**: Quick edits, branch creation, basic changes
2. **Codespaces Phase**: Running app, debugging, advanced features
3. **Collaboration Phase**: Port forwarding, sharing, PR creation

### Common Demo Modifications
- Product quantity fixes (e.g., "100 lemons" → "10 lemons")
- Adding new products with consistent schema
- Implementing array sorting with Copilot assistance
- UI enhancements while maintaining responsive design

## Code Completion Preferences

### JavaScript
- Prefer modern ES6+ syntax
- Use arrow functions for callbacks
- Suggest async/await for asynchronous operations
- Recommend const/let over var

### Express.js Routes
- Follow RESTful conventions
- Suggest middleware usage patterns
- Recommend error handling
- Prioritize readable route handlers

### EJS Templates
- Maintain consistent indentation
- Use semantic HTML elements
- Preserve accessibility attributes
- Keep template logic minimal

## AI Assistant Guidelines

### When suggesting changes:
1. **Minimal Impact**: Prefer small, focused changes
2. **Demo Friendly**: Consider impact on demo narrative
3. **Beginner Friendly**: Suggest easily understandable solutions
4. **Codespaces Optimized**: Consider cloud development environment

### Code suggestions should:
- Work well in both github.dev and full Codespaces
- Be easily explainable in a demo context
- Follow the existing code style
- Maintain the app's simplicity

### Avoid suggesting:
- Complex architectural changes
- Heavy dependencies
- Advanced security implementations
- Database integrations (keep JSON-based)

## Debugging Context

### Common Issues
- Port forwarding setup in Codespaces
- EJS template syntax errors
- CSS responsive behavior
- JSON data parsing

### Debugging Tools Available
- VS Code integrated debugger
- Browser developer tools
- Express.js error handling
- Nodemon auto-restart

## Performance Considerations
- **Startup Speed**: App should start quickly in Codespaces
- **Resource Usage**: Keep memory footprint small
- **Network**: Minimize external requests
- **Bundle Size**: Avoid large client-side libraries

## Accessibility Guidelines
- Maintain ARIA labels on interactive elements
- Preserve semantic HTML structure
- Keep color contrast ratios appropriate
- Ensure keyboard navigation works

## Responsive Design Context
- Mobile-first approach with Bulma
- Test across different screen sizes
- Consider Codespaces browser environment
- Maintain usability in github.dev

## Git Workflow Integration
- Changes should work well with demo branching
- Commit messages should be descriptive
- Consider PR review process in demos
- Maintain clean git history

## Extension Recommendations
When suggesting VS Code extensions:
- GitHub Copilot (primary demo focus)
- EJS Language Support
- JavaScript (ES6) code snippets
- Auto Rename Tag
- Bracket Pair Colorizer
- GitLens

## Testing Strategy
- Manual testing in browser
- Quick smoke tests for core functionality
- Responsive design verification
- Cross-browser compatibility (demo environments)

## Documentation Standards
- Keep README.md up to date with changes
- Comment complex logic
- Maintain inline documentation
- Update demo instructions if needed