# Undo Changes

- `git checkout --` it will undo the uncommited changes in a file
- `git checkout -- .` will undo the uncommitted changes in all files

## To revert a commit or revert a merged branch

- `git revert <hash-code>` The hashcode will be of the commit you want to revert.
  `git push -f origin <branch-name>` The branch should be your origin/remote repo
