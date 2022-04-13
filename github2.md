# Github Commands

- `git checkout fileName.ExtensionName` It will return the file to the unstaged area with previous changes!
- `git checkout -f ` The changes till remote repo will be shown. Other changes will be deleted! and if there is no remote repo then you'll be directed towards the old commit!
- `git remote add [origin] (url)` origin is a branch of your remote repository. You can even change it to a different name as well!
- `git remote -v` it will show us where our code on remote repo will be pushed and from where it would be fetched!
- `git config --global alias.newCommandName oldCommandName` By this way you can create you own git Command Alias.
- `git config --global alias.sooratehaal status` Now by `git sooratehaal` we will git `git status`
- `$ git config --global alias.shamilKaro 'add .'` If the command has more than one word then use single quotes like this.
- To specify File Name use `--` like `git config --global alias.unstage 'restore --staged --'` Now you can use alias `git unstage fileName`.
- `git restore --staged fileName.ExtensionName` It will unstage the files added earlier.
