# Shopping with Codespaces

This is a quick node project template for demoing Codespaces. It is based off of the [Azure node sample](https://github.com/Azure-Samples/nodejs-docs-hello-world) and [Haikus for CodeSpaces](https://github.com/2percentsilk/haikus-for-codespaces) by [Allison Weins](https://github.com/2percentsilk).

## Quick Start

### Edit on GitHub

1. Create a new repository in your organization using the `Use this template` button
1. On your repo, press `.`
1. Edit and save your desired files
1. Commit the files
1. Push the commit

### Edit and run with CodeSpaces

1. Follow the previous steps to [Edit-on-GitHub](#Edit-on-GitHub)
1. Click on the bottom left corner where it says `GitHub`
1. Select `Continue working on ...`
1. Select `Create new CodeSpace`
1. In the terminal, type `npm install` and press `<ENTER>`
1. Press `<F5>`
1. Select `Node.js`
1. Open a browser to <http://localhost:3000>

## CodeSpaces

![CodeSpaces](.docs/codespaces.png)

## Sample App

![Shopping App](.docs/screenshot.png)

## Demo Scenario

An urgent request from your project stakeholders has been sent to you to fix an app. You're asked to jump into the project and add a new missing product and sort the list of products alphabetically. You need to make those changes and you don't have the development environment necessary. But not to worry, you know you can use <github.dev> in the browser to make these changes.

### Adding the product in github.dev

1. You browse to the repository on GitHub at <https://github.com/johnpapa/shopping-for-codespaces>.
1. You press `.` and the code instantly opens in <github.dev>, a fast and free lightweight VS Code editor in the browser.

   > Notice that your editor is using your settings from your profile! This can be enabled by turning on or off Setting Sync. All of your settings, extensions, and keyboard preferences are available.

1. You create a new branch named `fix/products` for your intended changes.
1. You open the file containing the products in `products.json`.
1. You add the missing product for hot peppers and save the file.

   ```json
   {
     "id": 40,
     "name": "Hot Peppers",
     "description": "8 oz package of hot peppers",
     "quantity": 1,
     "imageclass": "fas fa-pepper-hot fa-3x"
   }
   ```

1. You commit the file changes.
1. You push the changes and publish the branch.

### Transition to CodeSpaces to run and debug

1. You want to see the application run to make sure the hot peppers are displayed, so you press `<F5>` to open the debugger.

   > You need compute power to run the app and debug it. You can seamlessly transition from <github.dev> to the full power of compute in the cloud. Let's see how.

1. Press the button `Continue Working On ...` to be transitioned to CodeSpaces.

   > The browser refreshes and you're now working with compute resources which allow you to run, debug, and use the terminal.

1. You press `<F5>` to debug the app.

   > CodeSpaces recognizes this as a JavaScript application and prompts you for the debugger profile.

1. You select `Node.js` as the profile and the debugger launches the application.
1. CodeSpaces alerts and prompts you to open the browser to see the running web application, so you press the button `Open in Browser`, which launches the app.

   > You notice your hot peppers have been added! Now you want to show the changes to your stakeholders before your merge to the `main` branch, so they can test it and confirm it works for them. You can do this by making your forwarded ports public.

### Forward your ports publicly to your stakeholders to view them

1. Select the `Ports` tab in the Terminal pane.
1. Notice the visibility is set to `private` by default. You will right click and select `Port Visibility` and `Public`
1. Now the URL can be shared with your stakeholders.

   > Your stakeholders review the running app and their pleased ... until they notice that the products are not sorted in the proper alphabetic order. Uh oh! You're going to fix that! But you can't remember the exact syntax to sort the JavaScript array. You'll use GitHub Co-Pilot to do this.

### Sort the products using the help of Copilot

1. You press `<F1>` to open CodeSpaces' command palette.
1. You select `View: Show Extensions`
1. You search for `GitHub Copilot`, press `Install`, and agree to the terms
1. You open the file `index.js` and put the cursor directly before the `render` code.
1. You type `///` to engage with Copilot
1. You type `/// sort the products by name alphabetically`, and hit `<TAB>` and `<ENTER>` to accept it
1. You are prompted line by line for the code to sort the products. It looks appropriate, so you click `<ENTER>` on each line to accept it, until it is complete.
1. You delete the old line of code to render the products, now that you have replaced it.
1. You re-run the debugger, open the browser, and refresh to see your changes!

   > Copilot just helped you write the code to sort the products directly in CodeSpaces in the browser. Now let's save your changes.

### Merge your changes

1. You stop the debugger.
1. You commit your changes and push them to the branch.
1. You create a new Pull Request.
1. You review, approve and merge the pull request to the `main` branch.
