
How does tracking and adding changes make developers' lives easier?
It is easier because a developer can keep track of all the changes to a file. If you add changes too you can see when it was changed.

What is a commit?
A commit is like a save progress of the file. It saves the point at which there has been changes made. You can also comment on what changes have been made.

What are the best practices for commit messages?
The best practice for commit messages is to do it after every change. You use the command git commit -m to write your commit. Commits are good when they are short and concise.

What does the HEAD^ argument mean?
HEAD^ is the last commit that was made.

What are the 3 stages of a git change and how do you move a file from 
one stage to the other?
The 3 stages are the working directory, the staging area an the git directory. You modify in the working directory. In the staging area you take snapshots of them. Then you commit them and send them to the directory. 

Write a handy cheatsheet of the commands you need to commit your 
changes?
commit -m is to give a commit
git log is to show a log of all the commits
git status shows the status of the current branch you are on

What is a pull request and how do you create and merge one?
Pull requests are sending your local files to the main one that is stored through github. A request is made in order to put them together. You create one by pushing your local file to github. This sends a pull request online. From there you can merge it and delete it.

Why are pull requests preferred when working with teams?
Pull requests are preferred on teams because they don't automatically merge into the main file ongithub without accepting it. So in case the request has bugs or errors you can deny it before anything bad happens to the main code.