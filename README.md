# Try out Development Containers: Perl

[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)][open-in-dev-containers]

[open-in-dev-containers]: https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/zakame/vscode-remote-try-perl

A **development container** is a running container with a well-defined
tool/runtime stack and its prerequisites. You can try out development
containers with **[GitHub Codespaces][codespaces]** or
**[Visual Studio Code Dev Containers][vscode-devcontainers]**.

[codespaces]: https://github.com/features/codespaces
[vscode-devcontainers]: https://aka.ms/vscode-remote/containers

This is a sample project that lets you try out either option in a few easy
steps. Inspired by the many [vscode-remote-try-*][vscode-remote-try-any]
sample projects from Microsoft.

[vscode-remote-try-any]: https://github.com/search?q=org%3Amicrosoft+vscode-remote-try-&type=Repositories
 
## Setting up the development container

### GitHub Codespaces

Follow these steps to open this sample in a Codespace:
1. Click the **Code** drop-down menu.
2. Click on the **Codespaces** tab.
3. Click **Create codespace on master** .

For more detail, visit the [GitHub documentation][creating-a-codespace].

[creating-a-codespace]: https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/creating-a-codespace#creating-a-codespace

### VS Code Dev Containers

If you already have VS Code and Docker installed, you can click the badge
above or [here][open-in-dev-containers] to get started. Clicking these links
will cause VS Code to automatically install the Dev Containers extension if
needed, clone the source code into a container volume, and spin up a dev
container for use.

Follow these steps to open this sample in a container using the VS Code Dev
Containers extension:

1. If this is your first time using a development container, please ensure
   your system meets the prerequisites (i.e. have Docker installed) in the
   [getting started steps][getting-started].

[getting-started]: https://aka.ms/vscode-remote/containers/getting-started

2. To use this repository, you can open a locally cloned copy of the code:

   - Clone this repository to your local filesystem.
   - Press <kbd>F1</kbd> and select the **Dev Containers: Open Folder in
     Container...** command.
   - Select the cloned copy of this folder, wait for the container to start,
     and try things out!

## Things to try

1. **Edit:**
   - Open `myapp.pl`
   - Try adding some code and check out the language features.
   - Notice that utilities like `perltidy` and the [Perl
     Navigator][perlnavigator] extension are installed. Tools are installed at
     Dev Container creation time.

[perlnavigator]: (https://marketplace.visualstudio.com/items?itemName=bscan.perlnavigator)

2. **Terminal:**
    - Press <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>\`</kbd> to open a terminal
      window.
    - Type `perl myapp.pl daemon` to run the app.
         - The terminal will say your app is `Web application available at
           http://127.0.0.1:3000`. Click on the link in the terminal to view
           your app running in the browser.
    - Notice that the Perl Navigator extension is already installed in the
      container since the `.devcontainer/devcontainer.json` lists
      `"bscan.perlnavigator"` as an extension to install automatically when
      the container is created.

3. **Build, Run, and Debug:**

   - Open `myapp.pl`
   - Add a breakpoint (e.g. on line 10).
   - Press <kbd>F5</kbd> to launch the app in the container.
   - Once the breakpoint is hit, try hovering over variables (e.g. the `$app`
     variable on line 4), examining locals, and more.
   - Continue (<kbd>F5</kbd>). You can connect to the server in the container
     by either: 
      - Clicking on `Open in Browser` in the notification telling you: `Web
        application available at http://127.0.0.1:3000`.
      - Clicking the globe icon in the 'Ports' view. The 'Ports' view gives
        you an organized table of your forwarded ports, and you can access it
        with the command **Ports: Focus on Ports View**.
   - Notice port 3000 in the 'Ports' view is labeled "Hello Remote World." In
     `devcontainer.json`, you can set `"portsAttributes"`, such as a label for
     your forwarded ports and the action to be taken when the port is
     autoforwarded.
   
   > **Note:** In Dev Containers, you can access your app at
   > `http://localhost:3000` in a local browser. But in a browser-based
   > Codespace, you must click the link from the notification or the `Ports`
   > view so that the service handles port forwarding in the browser and
   > generates the correct URL.

4. **Rebuild or update your container:**

   You may want to make changes to your container, such as installing a
   different version of a software or forwarding a new port. You'll rebuild
   your container for your changes to take effect. 

   **Open browser automatically:** As an example change, let's update the
   `portsAttributes` in the `.devcontainer/devcontainer.json` file to open a
   browser when our port is automatically forwarded.
   
   - Open the `.devcontainer/devcontainer.json` file.
   - Modify the `"onAutoForward"` attribute in your `portsAttributes` from
     `"notify"` to `"openBrowser"`.
   - Press <kbd>F1</kbd> and select the **Dev Containers: Rebuild Container**
     or **Codespaces: Rebuild Container** command so the modifications are
     picked up.  

5. **Install Node.js using a Dev Container Feature:**

   - Press <kbd>F1</kbd> and select the **Dev Containers: Configure Container
     Features...** or **Codespaces: Configure Container Features...** command.
   - Type "node" in the text box at the top.
   - Check the check box next to "Node.js (via nvm) and yarn" (published by
     devcontainers) 
   - Click OK
   - Press <kbd>F1</kbd> and select the **Dev Containers: Rebuild Container**
     or **Codespaces: Rebuild Container** command so the modifications are
     picked up.

## Contributing

Pull requests and suggestions are very much welcome!

## License

Licensed under the MIT License. See LICENSE in the project root for license
information.
