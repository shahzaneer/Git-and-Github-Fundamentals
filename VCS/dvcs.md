# Distributed Version Controlling System
## Distributed Repository: 
- `DVCS` stores the `complete project history in each developer's local repository`, making it a decentralized system. - This allows developers to work `offline` and avoid `dependence on a central server.`
## Workflow: 
## Developers work by:
- `Cloning a complete copy of the repository` from a remote server (e.g., GitHub, GitLab) or from another developer's local repository.
- `Making changes` to their local copy.
- `Committing their changes` to their local repository, creating a local history.
- `Pushing` their local commits to a remote server to share them with others.
- `Pulling the latest changes` from the `remote repository` and merging them into their `local branch` to stay in `sync` with other developers. (Merging can involve `resolving conflicts` if necessary.)

# Benefits of DVCS
## Offline capability: 
- Developers can work on their local copies without a network connection.
## Increased reliability: 
- `No single point of failure`, as each developer has a complete copy of the repository.
## Branching and merging: 
- `Encourages experimentation` and `collaboration` through independent branches for individual work and controlled merging with the main codebase.
## Steeper learning curve: 
- Setting up and understanding concepts like branching and merging might require more initial learning effort compared to CVCS.

# Examples
## Subversion (SVN): 
- A mature and widely used CVCS known for its simplicity and ease of use. It's suitable for smaller teams and projects with limited branching complexity.
## Perforce (P4): 
- Offers advanced features like access control and auditing, making it popular in enterprise settings with stricter security requirements.