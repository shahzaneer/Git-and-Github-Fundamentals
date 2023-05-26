# Branches

- Branching in Git is a powerful feature that allows developers to create independent lines of development within a repository.
- It enables `parallel work` on `different features`, `bug fixes`, or `experiments` without impacting the main codebase.
- Each branch in Git represents a separate line of development with its own commits, changes, and history.

## How branching works ?

- When you create a branch in Git, it essentially creates a `lightweight pointer to a specific commit`.
- The branch pointer (also known as a branch reference) points to the latest commit in the branch, indicating the current state of that branch's code. By default, every Git repository starts with a single branch called `master` or `main`

## Commands

- `git checkout -b newBranchName` It will make a new branch and will direct you to this branch.
- `git checkout branchName` It will take you from other branch to this branch.
- `git branch` it will display your all branches
- `git merge branchname` it will merge your branch in the current branch.
