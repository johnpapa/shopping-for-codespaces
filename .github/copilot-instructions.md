# GitHub Copilot Instructions for Shopping with Codespaces

## Project Overview

This is a Node.js Express application designed to demonstrate GitHub Codespaces and GitHub Copilot functionality. It's a simple shopping application that showcases how to develop, debug, and deploy web applications directly in a browser-based development environment.

## Architecture & Structure

- **Backend**: Node.js with Express.js framework
- **Frontend**: Server-side rendered EJS templates with Bulma CSS framework
- **Data**: Static JSON file (`products.json`) for product data
- **Styling**: Custom CSS with Bulma framework (`public/css/main.css`)
- **Assets**: Images and static files in `public/` directory

## Key Files & Directories

- `index.js` - Main Express server file with route definitions
- `package.json` - Node.js dependencies and scripts
- `products.json` - Static product data (modifiable for demos)
- `views/index.ejs` - Main HTML template
- `public/` - Static assets (CSS, images, etc.)
- `.vscode/settings.json` - VS Code configuration with Peacock theme

## Development Workflow

### Getting Started
1. The app is designed to work seamlessly in GitHub Codespaces
2. Use `npm install` to install dependencies
3. Use `npm start` to run the application in production mode
4. Use `npm run dev` to run with nodemon for development

### Port Configuration
- Default port: 3000 (configurable via `PORT` environment variable)
- Codespaces will automatically forward ports for preview

## Common Development Tasks

### Adding New Products
- Edit `products.json` to add/modify product entries
- Each product should have: `id`, `name`, `description`, `price`, `image`
- Server restart required after JSON changes

### Styling Changes
- Main styles in `public/css/main.css`
- Uses Bulma CSS framework classes
- Custom brand colors defined in CSS variables

### Template Modifications
- EJS templates in `views/` directory
- Main template: `views/index.ejs`
- Uses standard EJS syntax for server-side rendering

## Codespaces-Specific Features

### VS Code Integration
- Pre-configured with Peacock extension for visual organization
- Optimized for browser-based development
- Supports full debugging capabilities

### GitHub Copilot Usage
- Perfect for demonstrating AI-assisted coding
- Common use cases: sorting arrays, adding new routes, styling components
- Example: Ask Copilot to sort products alphabetically by name

### Port Forwarding
- App runs on port 3000 by default
- Use Codespaces port forwarding to share with stakeholders
- Can make ports public for external access

## Best Practices for AI Assistance

### When Working with This Codebase
1. Always consider the demo/educational nature of the application
2. Keep changes simple and demonstrable
3. Maintain the existing Express.js patterns
4. Preserve the EJS templating structure
5. Respect the Bulma CSS framework conventions

### Suggested AI Prompts
- "Sort the products array alphabetically by name"
- "Add a new route for product details"
- "Create a form for adding new products"
- "Add error handling for missing products"
- "Implement product search functionality"

### Code Style Guidelines
- Use ES6+ syntax where appropriate
- Maintain consistent indentation (2 spaces)
- Follow Express.js conventions for routing
- Keep EJS templates readable and well-structured

## Demo Scenarios

This application is specifically designed for demonstrating:
1. GitHub.dev for quick edits
2. Transition from github.dev to full Codespaces
3. Port forwarding and sharing
4. GitHub Copilot assistance
5. Git workflow within Codespaces

### Typical Demo Flow
1. Edit product data in github.dev
2. Move to Codespaces for running/debugging
3. Use Copilot to add features (like sorting)
4. Forward ports to share with stakeholders
5. Commit and create pull requests

## Troubleshooting

### Common Issues
- **Port conflicts**: Check if port 3000 is available
- **Missing dependencies**: Run `npm install`
- **Static file issues**: Verify `public/` directory structure
- **Template errors**: Check EJS syntax in `views/index.ejs`

### Development Environment
- Ensure Node.js is available (handled by Codespaces)
- Nodemon for development watching
- Express static file serving for assets

## Extension Recommendations

For optimal development experience:
- GitHub Copilot (AI assistance)
- Peacock (workspace colors)
- EJS language support
- Node.js extension pack
- GitLens (Git supercharged)

---

*This file helps GitHub Copilot and other AI assistants understand the project structure and provide more relevant suggestions.*