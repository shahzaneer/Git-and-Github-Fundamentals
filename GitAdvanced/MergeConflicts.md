# Merge Conflicts

## What is Merge Conflict?

- A merge conflict occurs in version control systems, including Git, `when there are conflicting changes made to the same part of a file` or `files being merged`.
- It happens when `Git is unable to automatically determine which changes to keep and how to combine them`, requiring manual intervention from the user to resolve the conflict.

## Scenarios for Merge Conflicts:

Merge conflicts typically arise in the following scenario:

### Two or more branches:

- There are multiple branches in a Git repository, such as a main branch (e.g., "master") and a feature branch created by another developer.

### Divergent changes:

- While working independently on their respective branches, developers make conflicting modifications to the same file(s), often in the `same lines` or `nearby lines`. For example, `if two developers modify the same function or section of code in different ways.`

### Merge attempt:

- One developer attempts to merge their branch into the target branch (e.g., merging a feature branch into the main branch) using the git merge command or a similar Git operation.

At this point, Git analyzes the changes made in both branches and tries to automatically merge them. However, if Git detects conflicting changes, it is unable to determine which version should take precedence. This results in a merge conflict, and `Git asks for human intervention` to resolve it.

## How Git Conflict is shown?

- When a merge conflict occurs, Git typically marks the conflicted sections in the `affected file(s)` using special markers, such as `<<<<<<<`, `=======`, and `>>>>>>>`. These markers surround the conflicting changes and provide visual cues to identify the conflicting content.

## how to resolve a merge Conflict?

- To resolve the merge conflict, the developer needs to manually edit the affected file(s) and choose which `changes to keep` or `modify to create` the desired merged result. The conflicting sections are edited to remove the conflict markers and incorporate the desired changes.

## What a Developer can decide of a merge Conflict?

- The developer can decide to keep one version of the conflicting changes, combine them in a customized way, or discard both versions and start from scratch by aborting the merge.

- Once the conflicting sections are resolved, the developer needs to `stage the modified file(s) using git add and then complete the merge using git commit`. - This `marks the conflict as resolved and creates a new commit that represents the merged state`.

## Important

- It's important to note that merge conflicts are a normal part of collaborative development when multiple developers are working on the same codebase.
- They require communication and coordination between developers to ensure that conflicting changes are resolved appropriately, preserving the integrity of the codebase and avoiding unintended errors or inconsistencies.

---

---

## Commands for Merge:

- `git merge branchName` it will merge the branch to the current branch.
- `git merge --abort` If a conflict arised and you decide not to continue with the merge you can use this command.
- `git branch -v` It will show the branches with the last commit and their - hashcodes.
- `git branch --merged` It will show the branches you already merged
- `git branch --no-merged` It will show the unbranched branches
- `git branch -d branchName` It will delete the branch if it is merged and if not It will give an error
