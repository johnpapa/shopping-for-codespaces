# AI Coding Agent Instructions

This repository is a Node.js Express demo application designed to showcase GitHub Codespaces and Copilot workflows.

## Core Commands

### Development
- `npm start` - Start the application (production mode)
- `npm run dev` - Start with nodemon for development (auto-restart on changes)
- `npm install` - Install dependencies

### No build/test commands
This is a simple demo app without build steps, linting, or test suites.

## Architecture Overview

### Tech Stack
- **Backend**: Node.js with Express.js web framework
- **Templating**: EJS (Embedded JavaScript templates)
- **Styling**: Bulma CSS framework + FontAwesome icons
- **Data**: JSON file-based storage (`products.json`)
- **Port**: 3000 (configurable via PORT environment variable)

### Key Components
- `index.js` - Main Express server, serves EJS templates with products data
- `products.json` - Sample product data (carrots, lemons, apples)
- `views/index.ejs` - Main HTML template with product display
- `public/css/main.css` - Bulma CSS framework styles
- `public/images/` - Static image assets

### File Structure
```
├── index.js           # Express server entry point
├── package.json       # Dependencies and scripts
├── products.json      # Sample product data
├── views/
│   └── index.ejs      # Main page template
└── public/
    ├── css/           # Stylesheets (Bulma framework)
    └── images/        # Static assets
```

## Repository Purpose & Demo Workflow

This is specifically designed as a **Codespaces demonstration repository** that showcases:

1. **github.dev editing** - Quick file changes in browser
2. **Codespaces transition** - Moving to full development environment
3. **Port forwarding** - Sharing running apps with stakeholders
4. **GitHub Copilot integration** - AI-assisted coding

### Common Demo Scenarios
- Fix product quantities (e.g., "100 lemons" → "10 lemons")
- Add new products to `products.json`
- Sort products alphabetically
- Debug and test changes in Codespaces

## Development Guidelines

### Data Management
- Products stored in `products.json` with schema: `{id, name, description, quantity, imageClass}`
- FontAwesome classes used for product icons (`fas fa-[item] fa-3x`)
- IDs increment by 10 (10, 20, 30, 40...)

### Code Style
- Simple, readable Express.js patterns
- EJS templating with embedded JavaScript
- ES6+ syntax where appropriate
- Minimal error handling (demo-focused)

### Adding Products
When adding products to `products.json`:
- Use incremental IDs (next: 40, 50, etc.)
- Include descriptive names and descriptions
- Use appropriate FontAwesome icon classes
- Maintain JSON formatting

### Common Tasks
- **Start debugging**: Press F5 in Codespaces to run with debugger
- **View app**: Access via forwarded port 3000
- **Make port public**: Right-click port in VS Code Ports tab
- **Edit products**: Modify `products.json` directly

## VS Code Integration

### Configured Extensions
- Peacock theme (blue #1857a4) for visual identification
- Optimized for Codespaces development experience

### Port Forwarding
- App runs on port 3000
- Can be made public for stakeholder review
- Automatic port detection in Codespaces

## Important Notes

- This is a **demo/template repository** - not production code
- Simplified architecture intentionally (no database, minimal validation)
- Focus on Codespaces workflow demonstration over code complexity
- Based on Azure Node.js samples and Haikus for Codespaces projects
- Created by John Papa for educational purposes

## Agent Behavior Guidelines

- Maintain the simple, demo-focused nature of the codebase
- Preserve the educational workflow patterns described in README.md
- Keep changes minimal and focused on demonstration value
- When debugging, use the browser debugging workflow described in the README
- Consider stakeholder review scenarios when making changes (port forwarding, etc.)