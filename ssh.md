 # SSH Key Configuration
 - Visit link for creating and adding SSH Link to gitHub!
https://docs.github.com/en/authentication/connecting-to-github-with-ssh

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

- Now add the paste in github SSH key 

