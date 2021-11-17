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

### webhook info
- **GitHub steps**
- go to your GitHub repository and click on **‘Settings’**.
- Click on Webhooks and then click on **‘Add webhook’**.
- In the **‘Payload URL’** field, paste your Jenkins environment URL. At the end of this URL add /github-webhook/. In the ‘Content type’ select: ‘application/json’ and leave the **‘Secret’** field empty.
- In the page **‘Which events would you like to trigger this webhook?’** choose ‘Let me select individual events.’ Then, check **‘Pull Requests’** and **‘Pushes’**. At the end of this option, make sure that the ‘Active’ option is checked and click on ‘Add webhook’.

- **Jenkins steps**
- In Jenkins, click on **‘New Item’** to create a new project.
- Give your project a name, then choose **‘Freestyle project’** and finally, click on ‘OK’.
- Click on the **‘Source Code Management’** tab.
- Click on Git and paste your GitHub repository URL in the **‘Repository URL’** field.
- Click on the **‘Build Triggers’** tab and then on the ‘GitHub hook trigger for GITScm polling’. Or, choose the trigger of your choice.

- Reference: https://www.blazemeter.com/blog/how-to-integrate-your-github-repository-to-your-jenkins-project

**Ensure that "GitHub hook trigger for GITScm polling" is ticked in "Build Triggers" on Jenkins, otherwise it wont link
new branch