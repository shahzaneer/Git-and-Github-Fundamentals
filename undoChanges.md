# Undo Changes

- `git checkout --` it will undo the uncommited changes in a file
- `git checkout -- .` will undo the uncommitted changes in all files

# how to revert merged branch / a pushed commit ?

- `git revert hash-code`
- `git push -f origin <branch-name>`
- The hash code should be of that commit you want to remove.
- branch name should be of remote branch currently active.
