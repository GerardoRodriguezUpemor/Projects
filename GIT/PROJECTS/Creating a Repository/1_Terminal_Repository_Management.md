# Managing Repositories from the Terminal

This document explains how to create, modify, and manage your Git repositories using the command line.

## Creating a New Repository

1.  **Initialize a new Git repository:**
    ```bash
    git init
    ```

2.  **Add a remote origin:**
    ```bash
    git remote add origin <repository_url>
    ```

## Adding Files

1.  **Stage files for commit:**
    ```bash
    git add <file_name> # Stage a specific file
    git add .           # Stage all new and modified files
    ```

2.  **Commit the staged files:**
    ```bash
    git commit -m "Your commit message"
    ```

## Modifying Files and the Repository

1.  **Check the status of your repository:**
    ```bash
    git status
    ```

2.  **View the differences between your working directory and the last commit:**
    ```bash
    git diff
    ```

3.  **Push your changes to the remote repository:**
    ```bash
    git push origin <branch_name>
    ```
