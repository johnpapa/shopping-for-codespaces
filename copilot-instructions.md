# GitHub Copilot Instructions for Shopping with Codespaces

## Project Overview
This is a Node.js Express web application designed to demonstrate GitHub Codespaces and GitHub Copilot capabilities. It's a simple shopping app that showcases rapid development, debugging, and collaboration workflows in cloud-based development environments.

## Architecture & Technologies
- **Backend**: Node.js with Express.js framework
- **View Engine**: EJS (Embedded JavaScript templates)
- **Styling**: Bulma CSS framework with custom styles
- **Data**: JSON file-based product storage
- **Development**: Nodemon for hot reloading

## Coding Standards & Patterns

### JavaScript Style
- Use `let` and `const` instead of `var`
- Prefer arrow functions for callbacks: `(req, res) => {}`
- Use template literals for string interpolation
- Keep functions small and focused
- Use descriptive variable names

### Express.js Patterns
- Follow RESTful routing conventions
- Use middleware for common functionality
- Keep route handlers concise
- Handle errors gracefully
- Use appropriate HTTP status codes

### File Organization
```
├── index.js          # Main application entry point
├── package.json      # Dependencies and scripts
├── products.json     # Product data store
├── public/           # Static assets (CSS, images, JS)
├── views/            # EJS templates
└── .vscode/          # VS Code configuration
```

## Development Guidelines

### When adding new features:
1. Follow the existing Express.js routing pattern
2. Use EJS templates for views consistently
3. Keep static assets in the `public` directory
4. Maintain the existing CSS class naming conventions
5. Test changes in both github.dev and Codespaces

### For product management:
- Products are stored in `products.json`
- Each product should have: id, name, description, quantity, imageClass
- Use Font Awesome classes for product icons
- Maintain consistent product data structure

### For styling:
- Use Bulma CSS utility classes where possible
- Custom styles go in `public/css/main.css`
- Follow mobile-first responsive design
- Maintain accessibility standards

## Demo Scenario Context
This app is used to demonstrate:
1. Quick edits in github.dev
2. Advanced development in Codespaces
3. Port forwarding and sharing
4. GitHub Copilot code assistance
5. Git workflow integration

### Key Demo Points:
- **Bug Fix**: Fixing "100 lemons" to "10 lemons" in products.json
- **Feature Addition**: Adding new products like "Hot Peppers"
- **Code Enhancement**: Sorting products alphabetically using Copilot
- **Collaboration**: Sharing running app via forwarded ports

## Copilot Usage Patterns

### For JavaScript array operations:
```javascript
// Example: Sorting products by name
let sortedProducts = products.sort((a, b) => {
  if (a.name < b.name) return -1;
  if (a.name > b.name) return 1;
  return 0;
});
```

### For Express route handlers:
```javascript
app.get('/', (req, res) => {
  // Process data
  res.render('view-name', { data });
});
```

### For EJS templates:
```ejs
<% products.forEach(product => { %>
  <div class="product-item">
    <h3><%= product.name %></h3>
    <p><%= product.description %></p>
  </div>
<% }); %>
```

## Dependencies Context
- **express**: Web application framework
- **ejs**: Template engine for dynamic HTML
- **nodemon**: Development tool for auto-restarting server

## Common Tasks & Patterns

### Adding a new product:
1. Edit `products.json`
2. Add object with required fields
3. Use appropriate Font Awesome icon class
4. Test in browser

### Modifying routes:
1. Edit `index.js`
2. Follow existing pattern
3. Use appropriate middleware if needed
4. Test with nodemon running

### Updating styles:
1. Modify `public/css/main.css`
2. Use Bulma classes first
3. Add custom CSS sparingly
4. Test responsive behavior

## Error Handling
- Always handle potential JSON parsing errors
- Provide meaningful error messages
- Use appropriate HTTP status codes
- Log errors for debugging

## Performance Considerations
- Keep the app lightweight for demo purposes
- Minimize external dependencies
- Optimize for fast startup in Codespaces
- Ensure quick loading in github.dev

## Security Notes
- This is a demo app - no authentication required
- No sensitive data handling
- Keep dependencies updated for security
- Follow basic Express.js security practices