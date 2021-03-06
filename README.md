# Shopping with Codespaces

This is a quick node project template for demoing Codespaces. It is based off of the [Azure node sample](https://github.com/Azure-Samples/nodejs-docs-hello-world) and [Haikus for Codespaces](https://github.com/2percentsilk/haikus-for-codespaces) by [Allison Weins](https://github.com/2percentsilk).

## Top Features

- Start quickly with github.dev: a fast, free and lightweight VS Code editor in the browser
- Enjoy git integration to create branches and pull requests
- Continue working on Codespaces to run and debug
- Share your running app by forwarding ports
- Extend your code with GitHub Copilot

## Setup

Before presenting this demo, be sure to create your own repository from the template, following these instructions:

1. <a target="_blank" href="https://github.com/johnpapa/shopping-for-codespaces/generate">Generate your repository in your organization, by clicking here.</a>

   > This will open in a new tab where you can fill out the name and other details

1. Name your repository and continue

## Demo Story

It's a familiar story ...

You just received an urgent request from your project stakeholders to fix the web app. You need to jump directly into the project and correct a mistake where the site is selling a bag of a 100 lemons when it's only supposed to be 10 per bag!

Compounding the urgency, you need to make the changes and you don't have the local development environment with Node.js and all of the required project dependencies. Not to worry though as you know you can use **github.dev** in the browser to make these changes.

<img src=".docs/screenshot.png" width=600 alt="Existing App">

### Adding the product in github.dev

1. Browse to the repository on GitHub at <https://github.com/johnpapa/shopping-for-codespaces>.
1. Press `.` and the code instantly opens in **github.dev**, a fast and free lightweight VS Code editor in the browser.

    <img src=".docs/github.dev.png" width=600 alt="github.dev">

   > Now you want to create your changes in separate branch and generate a new pull request.

1. Press `<F1>` to open the command palette.
1. Type and select `Create New Branch` and name it `fix/products`
1. Press `<ENTER>` and select `Switch to Branch` and `Leave Site` to refresh to the new branch.
1. Open the file containing the products in `products.json`.
1. Edit the description for lemons to the proper quantity of 10 per bag.

   ```json
      "description": "Bag of 100 ripe lemons",
   ```

   to

   ```json
      "description": "Bag of 10 ripe lemons",
   ```

1. This is a simple change so you're comfortable to commit the file changes.

### Transition to Codespaces to run and debug

> While you're editing the `products.json` file you are communicating with your stakeholders to let them know the change is being made. Since you're in there, they ask if you can add a new entry for a new product, hot peppers! Of course you can do this, but you'll feel more confident if you can build, run and view the app to verify that it works. You decide it's time to run and debug the app.

1. While in the same branch, open the file containing the products in `products.json`.
1. Add the missing product for hot peppers and save the file.

   ```json
   {
     "id": 40,
     "name": "Hot Peppers",
     "description": "8 oz package of hot peppers",
     "quantity": 1,
     "imageClass": "fas fa-pepper-hot fa-3x"
   }
   ```

1. Now commit these changes.
1. You want to see the application run to make sure the hot peppers are displayed, so you press `<F5>` to run and debug the app.

   > So far we've been working entirely with the files in the browser. But now you need compute power to run the app and debug it. You can seamlessly transition from **github.dev** to the full power of compute in the cloud. Let's see how.

1. Press the button `Continue Working On ...` and then select `Create New CodeSpace` to be transitioned to Codespaces.

   > The browser refreshes and you're now working with compute resources which allow you to run, debug, and use the terminal all with the environment you need in the cloud. It even ran `npm install` to install your dependencies! Let's debug your app.

   > Note: You're using the default devcontainer for Node.js. You can create a custom devcontainer, by following the link in the terminal comments. But that's for another day.

    <img src=".docs/create-codespace.png" width=600 alt="create codespace">

1. Let's open the file `index.js` and set a breakpoint on the line that renders the products.

1. Press `<F5>` to debug the app.

   > Codespaces recognizes this as a JavaScript application and prompts you for the debugger profile.

1. Select `Node.js` as the profile and the debugger launches the application.
1. Codespaces prompts you to open the browser to see the running web application, so you press the button `Open in Browser`, which launches the app.

   > You hit the breakpoint you set in Codespaces. You can now debug your application and inspect and change variables.

    <img src=".docs/debug.png" width=600 alt="debug">

1. Remove the breakpoint and let the debugger continue to render the webpage.

   > You notice your hot peppers have been added! Now you want to show the changes to your stakeholders before your merge to the `main` branch, so they can test it and confirm it works for them. You can do this by making your forwarded ports public.

### Forward your ports publicly to your stakeholders to view them

1. Select the `Ports` tab in the Terminal pane.
1. Notice the visibility is set to `private` by default. You will right click and select `Port Visibility` and `Public`

   > Setting the port to public allows your stakeholders to see the app from the URL.

    <img src=".docs/port-public.png" width=600 alt="make the port public">

1. Now the URL can be shared with your stakeholders.

   > Your stakeholders review the running app and they're quite pleased ... until they notice that the products are not sorted in the proper ascending order by name. Uh oh, you're going to have to fix that! But you can't remember the exact syntax to sort the JavaScript array. Maybe GitHub Copilot can help you do this.

### Sort the products using the help of Copilot

1. Stop the debugger.
1. Press `<F1>` to open Codespaces' command palette.
1. Select `View: Show Extensions`
1. Search for `GitHub Copilot`, press `Install`, and agree to the terms
1. Open the file `index.js` and put the cursor directly before the `render` code.
1. Type `//` to engage with Copilot
1. Type `// sort the products by name in ascending order`, and hit `<TAB>` and `<ENTER>` to accept each line.
1. You're prompted line by line for the code to sort the products. It looks appropriate, so click `<ENTER>` on each line to accept it, until it is complete.
1. Comment the old line of code to render the products, now that you have replaced it.

   ```javascript
   app.get('/', (req, res) => {
     // sort the products by name in ascending order
     let sortedProducts = products.sort((a, b) => {
       if (a.name < b.name) {
         return -1;
       }
       if (a.name > b.name) {
         return 1;
       }
       return 0;
     });
     res.render('index', { products: sortedProducts });

     // res.render('index', { products });
   });
   ```

1. Press `<F5>` to debug.
1. Open the browser and see your changes worked!

   > Copilot just helped you write the code to sort the products directly in Codespaces in the browser.

    <img src=".docs/final-app.png" width=600 alt="final app">

### Merge your changes

1. Stop the debugger.
1. Commit your changes and push them to the branch.
1. Create a new Pull Request.
1. Review, approve, and merge the pull request to the `main` branch.

### Recap

> Let's look back at what we were able to accomplish, all without having the local dev environment. You can edit files, create a new branch, and merge a PR all from **github.dev** in the browser. Then when you need a robust dev invironment to run your application, you can continue working on it in Codespaces. Here you can debug it and use tools like GitHub Copilot to help write the code your app needs, all from within the browser.
