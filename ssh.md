 # SSH Key Configuration
 - Visit link for creating and adding SSH Link to gitHub!
https://docs.github.com/en/authentication/connecting-to-github-with-ssh

or if you're lazy enough follow these commands line by line 😉
***
```
ssh-keygen -t rsa -b 4096 -C "yourEmailID@gmail.com"

```
- Enter , Enter , Enter ,Enter
```
eval "$(ssh-agent -s)"
```
- Enter
```
ssh-add ~/.ssh/id_ed25519
```
-  Now to add the SSH key
```
clip < ~/.ssh/id_ed25519.pub
``` 
BY the above command your SSH key is copied to your clipboard

- Now  paste SSH Key in Github Account 

