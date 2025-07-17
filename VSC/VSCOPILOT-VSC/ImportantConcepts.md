# Important Visual Studio Code Concepts

Visual Studio Code (VSC) is a lightweight but powerful source code editor that runs on your desktop and is available for Windows, macOS, and Linux. It comes with built-in support for JavaScript, TypeScript, and Node.js and has a rich ecosystem of extensions for other languages (such as C++, C#, Java, Python, PHP, Go) and runtimes (such as .NET and Unity).

## Extensions

Extensions are at the core of VSC's customization and power. They allow you to add languages, debuggers, tools, and more.

*   **What are they?** Software packages that can be installed to extend the functionality of VSC.
*   **Where to find them?** In the Visual Studio Code Marketplace, accessible directly from the editor.
*   **Popular Examples:**
    *   **Python:** Support for the Python language (linting, debugging, etc.).
    *   **Prettier - Code formatter:** An automatic code formatter.
    *   **Live Server:** To launch a local development server with live reload.
    *   **GitLens:** Enhances the built-in Git capabilities.

## Dependencies

In the context of a project, dependencies are third-party libraries or packages that your code needs to function.

*   **Dependency Management:** This is done through language/ecosystem-specific manifest files.
    *   **JavaScript/Node.js:** `package.json` (managed with npm or yarn).
    *   **Python:** `requirements.txt` (managed with pip) or `pyproject.toml` (with Poetry or PDM).
    *   **Java:** `pom.xml` (Maven) or `build.gradle` (Gradle).

## Workspace Configuration Files (.vscode)

VSC uses a `.vscode` folder at the root of your project to store settings specific to that workspace.

### `settings.json`

Allows you to override global user settings for a specific workspace.

*   **Example:**
    ```json
    {
      "editor.fontSize": 14,
      "files.exclude": {
        "**/.git": true,
        "**/node_modules": true
      }
    }
    ```

### `tasks.json`

Defines custom tasks that can be run from VSC. It is useful for automating build scripts, tests, etc.

*   **Example (running a build script):**
    ```json
    {
      "version": "2.0.0",
      "tasks": [
        {
          "label": "build",
          "type": "shell",
          "command": "npm run build",
          "group": {
            "kind": "build",
            "isDefault": true
          }
        }
      ]
    }
    ```

### `launch.json`

Contains configurations for the VSC debugger. It allows you to define how to launch and attach the debugger to your application.

*   **Example (debugging a Node.js application):**
    ```json
    {
      "version": "0.2.0",
      "configurations": [
        {
          "type": "node",
          "request": "launch",
          "name": "Launch Program",
          "skipFiles": [
            "<node_internals>/**"
          ],
          "program": "${workspaceFolder}/app.js"
        }
      ]
    }
    ```
