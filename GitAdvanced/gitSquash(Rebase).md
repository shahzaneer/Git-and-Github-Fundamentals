# Git Squash

- In Git, "squashing" refers to the process of combining multiple commits into a single commit.

# Why Git Squash?

- It allows you to condense the commit history and make it more concise and organized.
- Squashing commits can be useful for cleaning up a branch before merging it into the main branch or creating a more logical and coherent commit history.

- When you squash commits, you take a series of commits and merge them into one, effectively creating a new commit that incorporates the changes from all the squashed commits. The original commits are replaced with the new commit, resulting in a linear history.

## Work flow:

To squash commits, you typically use the `interactive rebase feature` in Git. Here's a general workflow to squash commits:

### Start an interactive rebase:

- Run the command `git rebase -i <commit>` in your Git repository, where <commit> is the commit you want to squash into (usually the commit before the oldest one you want to squash).

- In the interactive rebase window that appears, you will see a list of commits starting from the <commit> you specified in the previous step. Each commit will have a prefix like `pick`, `reword`, `edit`, or `squash`. To squash a commit, change the word `pick` to `squash` or simply `s` for the commits you want to squash. Leave the pick prefix for the commit you want to keep as the final squashed commit.

- Save and close the interactive rebase window. Git will automatically apply the changes and start the rebasing process.

- During the rebasing process, Git will present another window or prompt where you can modify the commit message for the new squashed commit. You can edit the message as needed and save it to continue.

- Once the rebase process is complete, you will have a new commit that incorporates the changes from the squashed commits. The commit history will be cleaner and more concise, with the squashed commits removed.

### Important:

- It's important to note that squashing commits modifies the commit history, so it's generally recommended to do it on branches that haven't been pushed or shared with others.
- If you have already pushed the branch, it's best to coordinate with other team members and make sure they are aware of the changes before squashing commits.

- Squashing commits can help create a more coherent and manageable commit history, making it easier to understand and review the changes made in a branch or feature before merging it into the main branch.


a 