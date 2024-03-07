# Branches

- `Branching` in Git is a powerful feature that allows developers to create independent lines of development within a repository.
- It enables `parallel work` on `different features`, `bug fixes`, or `experiments` without impacting the main codebase.
- Each branch in Git represents a separate line of development with its own commits, changes, and history.

## How branching works ?

- When you create a branch in Git, it essentially creates a `lightweight pointer to a specific commit`.
- The branch pointer (also known as a branch reference) points to the latest commit in the branch, indicating the current state of that branch's code. By default, every Git repository starts with a single branch called `master` or `main`

## Commands

- `git checkout -b newBranchName` It will make a new branch and will direct you to this branch.
- `git checkout branchName` It will take you from other branch to this branch.
- `git branch` it will display your all branches
- `git merge branchName` it will merge your branch in the current branch.

- if `Remote branch` contains some commits which are not present in the `local branch` then we can download the changes without merging or rebasing it to our local repo by `git fetch origin` and then we can decide what to do next. It does not merge (include changes in your local repo)
- If `Local branch` contains some commits which are not present in the `Remote branch` (that is you want to push your branch/changes to the remote repo) you can use `git push origin <branch_name>` If the remote branch already exists and there are no conflicts, the command will simply upload your local commits to the remote branch and if the remote branch does not exist, the command will create a new remote branch with the same name as your local branch and push your commits to it.
### Difference between `git fetch origin` & `git pull`:
#### git fetch origin:
- Downloads the latest changes (commits, branches, tags) from the remote repository named "origin" to your local repository.
- Does not integrate these changes into your local working directory or modify your local branch.
- Essentially, it updates your local knowledge of the remote repository without affecting your current work.
#### git pull:
- Combines git fetch origin and git merge (or sometimes git rebase) into a single command.
- Fetches the latest changes from the remote repository named "origin" and Attempts to integrate those changes into your current local branch.
- If there are no conflicts (changes from both local and remote branches don't modify the same lines of code), the merge/rebase is successful.
- If there are conflicts (changes overlap), you'll need to manually resolve them before the integration is complete.
- To maintain the forked branch data and the original data we can use the `upstream fetch` button which appears on GitHub. We can also do it by `git fetch --all --prune`

`git remote add upstream <upstream_repository_url>` We can use it to add the upstream repository link to the forked repository. It is then kept up-to-date with the help of `git fetch` and `git merge` respectively

## One branch can only open one pull-request we cannot open more pull requests against a single branch

# One branch -> one pull request!
## Why so?
### Because, One branch can create only only one pull request. 
- If we have a same branch for `two features update/addition`. They will come under the `same pull request` and thus it is very much confusing and difficult for the original maintainer to merge it for both simultaneously.
- He may prefer to choose one feature to merge and not other. So eventually this is a good practice to keep one branch for one feature (one branch for one pull-request).

