# Undo Changes

- `git checkout --` it will undo the uncommited changes in a file
- `git checkout -- .` will undo the uncommitted changes in all files

## You changed many things without committing and now wanted to go back?

- `git checkout -f` and you're now again back at the last commit's changes

# how to revert merged branch / a pushed commit ?

- `git revert hash-code`
- `git push -f origin <branch-name>`
- The hash code should be of that commit you want to remove.
- branch name should be of remote branch currently active.
