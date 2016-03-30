# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a system used to manage the history of source code in order to document or revert back to previous versions of the code.  It keeps code from unwanted changes and loss and allows greater collaboration among members of a group.

* What is a branch and why would you use one?

A branch is an organizational tool used to manage multiple edits of file to in parallel.  Branches can be used to work on different parts of the code at the same time while keep track of its changes simultaneously.

* What is a commit? What makes a good commit message?

A commit is a version of a file stored safely in the Git database which is located in the Git directory.  Commits are distinguished by messages given by the editor to describe exact details what has been changed.  A good commit message is short, descriptive, and to the point.
Chris Beams at http://chris.beams.io/posts/git-commit/ gives his 7 rules of a great git commit message.

**The seven rules of a great git commit message**
1. Separate subject from body with a blank line
2. Limit the subject line to 50 characters
3. Capitalize the subject line
4. Do not end the subject line with a period
5. Use the imperative mood in the subject line
6. Wrap the body at 72 characters
7. Use the body to explain what and why vs. how


* What is a merge conflict?

A merge conflict is when two parts of the same file have been changed differently and are trying to be merged causing an error. Merge conflicts can be resolved by opening the file and using the annotation markers to correct the conflict yourself.  Then save the file and commit it to the git database.