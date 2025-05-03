# What is SSH?

- SSH (Secure Shell) keys are a pair of cryptographic keys used for secure communication and authentication in SSH protocols.
- They consist of a public key and a private key, and together they form a key pair. Here's a brief explanation of each component:

## Public Key:

- The public key is intended to be shared with others, including the server you want to connect to. It is stored on the remote server, such as GitHub, and is associated with your user account. The public key is used to encrypt data that can only be decrypted by the corresponding private key.

## Private Key:

- The private key is kept on your local machine and should be kept secure and confidential. It is used for decrypting data that has been encrypted with the associated public key. The private key should not be shared with anyone, as it is the key that proves your identity and allows access to the resources associated with the corresponding public key.

- When you connect to a remote server, such as GitHub, using SSH, the server checks if the public key associated with your user account matches the private key you provide during the authentication process. If they match, the server verifies your identity and grants you access.

- SSH keys are typically generated using software tools like OpenSSH or PuTTY. The generation process creates a unique key pair specific to your machine. The public key can then be added to your GitHub account settings, allowing you to authenticate securely when interacting with the GitHub server.

- Using SSH keys provides a more secure and convenient method of authentication compared to traditional username/password authentication. It eliminates the need to transmit passwords over the network and offers stronger security against brute-force attacks.

# Why SSH?

- SSH keys are generated for GitHub accounts to establish a secure and authenticated connection between your local machine and the GitHub server.

- Here are the reasons why SSH keys are used for GitHub accounts:

## Authentication:

SSH keys provide a secure method of authenticating your identity to the GitHub server. When you generate an SSH key pair, it consists of a public key and a private key. The public key is stored on your GitHub account, while the private key remains on your local machine. When you attempt to connect to GitHub, the server checks if your private key matches the public key associated with your account, thus verifying your identity.

## Secure Communication:

- SSH keys use asymmetric encryption to establish a secure and encrypted communication channel between your local machine and the GitHub server. This ensures that the data transmitted between your machine and GitHub remains confidential and cannot be intercepted or tampered with.

## Convenience and Automation:

- Once you have set up an SSH key for your GitHub account, you can authenticate with the server without entering your username and password each time you interact with GitHub. This is particularly useful when pushing, pulling, or cloning repositories, as it streamlines the process and eliminates the need for manual authentication.

## Enhanced Security:

- SSH keys offer stronger security compared to traditional username/password authentication. The private key is securely stored on your local machine and is not transmitted over the network, reducing the risk of it being intercepted or compromised. Additionally, SSH keys are typically longer and more complex than passwords, making them harder to crack through brute-force attacks.

## Multiple Machine Access:

- If you work with GitHub from multiple machines (e.g., your work computer and personal laptop), using SSH keys allows you to access your GitHub account from any of those machines without the need to remember different passwords or rely on temporary access tokens.

- By generating and using SSH keys for your GitHub account, you enhance the security of your interactions with the platform, simplify the authentication process, and enable secure and seamless access from multiple machines.

# SSH Key Configuration

- Visit link for creating and adding SSH Link to gitHub!
  https://docs.github.com/en/authentication/connecting-to-github-with-ssh

or if you're lazy enough follow these commands line by line 😉

---

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

- Now to add the SSH key

```
clip < ~/.ssh/id_ed25519.pub
```

BY the above command your SSH key is copied to your clipboard

- Now paste SSH Key in Github Account
