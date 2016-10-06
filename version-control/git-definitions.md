# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

#### Version control is a system that records the history of changes made to files so that you can look back at the different versions. It's important because you might want to see how code has evolved by looking back at previous versions of the codebase. Version control also allows you to create different branches so that you can work on the project without altering the master branch. By creating branches, different people can work on one project without making changes to the codebase that haven't been reviewed by others.

* What is a branch and why would you use one?

#### A branch is a version of the codebase that diverges from the master branch. You create one so that you can make changes without directly altering the master branch. After a branch is created, it can be reviewed and merged back to the master branch when the work has been reviewed.

* What is a commit? What makes a good commit message?

#### A commit is a save point. A good commit message is detailed so that when you're looking back at older versions of the code you know exactly what changes were made. 

* What is a merge conflict?

#### A merge conflice is when a branch cannot be merged with the master because of conflict with the code. This occurs if someone else has edited the same line of a file as you did. Or if someone else deleted a file that you changed. Since Git doesn't know what to do to resolve the conflict, you'll have to review and fix it. 