- intergration tool
- Widely used
- open-source
- essential part of the DevOps lifecycle
- can be aimed at a git repo
### ssh key generation
- go into .ssh folder (cd ~/.ssh) from git bash
- ssh-keygen -t rsa -b 4096 -C "username@email.com" (email is github email)


### jenkins code along
- 35.178.251.94:8080 for jenkins
- login
- new item
- item name
- freestyle project
- create
- write description
- discard old builds
  - max # of builds to keep = 3
- github project
  -  enter http url for repo
-  sourcecode management
   -  git
   -  add ssh url for repo
   -  credentials 
      -  username of your key (created below)
   -  add key
      -  kind
         -  ssh username with private key
      -  username
         -  unique and related to the user (you)
      -  private key
         -  enter directly
   -  branches to build
      -  change master to main
-  build triggers
   -  tick github hook trigger for GITScm polling
-  Build environment
   -  tick Provide Node & npm bin/ folder to PATH
- build 
  - add build step
    - execute shell
    - add commands

