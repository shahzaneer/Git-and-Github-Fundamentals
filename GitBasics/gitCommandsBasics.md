
# Git Commands

- `rm -rf .git` is used to remove the git folder
- you can simply delete the git folder from your PC to remove it.
- Once remote Location is added you can simply use push command to work directly!
- e.g ` git push`
- you need to add the remote repository only once!
- `.gitignore` is the file where you keep the names of those files you want git to ignore!
- `*.extensionName` if included in the gitignore folder then all those files will be ignored!
- `git diff` compares the working area and stagging area

- `git commit -a -m "direct commit" ` It will directly commit the tracked files (the already staged file). however the untracked files will not be committed!
- `git log` will display all the commits and who commit them also! by pressing `q` you will be out of git log command.
-  You can manually delete or rename files from the git repo but it can be done using git bash!
- `git rm fileName.ExtensionName` file will be deleted from the git repo and it will also be staged . The next step will be to commit! When you do this manually it is not staged!
- `git mv currentFileName.ExtensionName newFileName.ExtensionName` file will be renamed and it will be staged as well. The next step will be to commit! When you do this manually it is not staged!

- when a file is being already tracked and then we add it to the gitignore then we modify it. It should not be shown modified now according to our concept but it is shown! for this purpose we have to exclude such files explicitly!
- `git rm --cached fileName.ExtensionName ` it will remove the already tracked file from the git scenerio. However it will remain in the project!
- `git log  ` To inspect and compare the git repo changes  (it only shows the commits)
- `git log --stat` it shows the changes in the commits as well! In short thr general statistics of the all the commits!
- `git log --pretty=oneline` it will show each git commit in one line!
- `git log --pretty=short` it will show each git commit shortly 
- `git log --pretty=full` it will show each commit in detail.
- `Author` is a person who created the file first time!
- `Commiter` is anyone who commit some changes in that file!
- `git log --since=2.days` it will show your commits for the last 2 days
- `git log --since=2.weeks` it will show your commits for the last 2 weeks
- `git log --since=2.years` it will show your commits for the last 2 years
- `git log --since=2.hours` it will show your commits for the last 2 hours
- `git log --since=2.minutes` it will show your commits for the last 2 Minutes
- `git log --pretty=format: "%h -- %an" ` We can use these specific formats which can be found on 
[pretty formats](https://git-scm.com/docs/pretty-formats)
- `git log -p -1` it will show the complete details of last commit!
- `git log -p -2` for last two commits and so no!
- `git commit --ammend` Will open the VIM terminal where the last commit can be seen and the commit message along with the new commit changes can be merged.
- For writing in VIM Terminal Click `i` and to escape `escape` `:` then `wq` to exit!

- `git checkout fileName.ExtensionName` It will return the file to the unstaged area with previous changes!
- `git checkout -f ` The changes till remote repo will be shown. Other changes will be deleted! and if there is no remote repo then you'll be directed towards the old commit!
- `git remote add [origin] (url)` origin is a branch of your remote repository. You can even change it to a different name as well!
- `git remote -v` it will show us where our code on remote repo will be pushed and from where it would be fetched!
- `git config --global alias.newCommandName oldCommandName` By this way you can create you own git Command Alias.
- `git config --global alias.sooratehaal status` Now by `git sooratehaal` we will git `git status`
- `$ git config --global alias.shamilKaro 'add .'` If the command has more than one word then use single quotes like this.
- To specify File Name use `--` like `git config --global alias.unstage 'restore --staged --'` Now you can use alias `git unstage fileName`.
- `git restore --staged fileName.ExtensionName` It will unstage the files added earlier.









