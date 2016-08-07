# Git Definitions

**Instructions:** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is a system that allows you to keep track of files over time.

* What is a branch and why would you use one?
A branch is way to make changes to existing files in a "controlled enviorment" without affecting the main master branch. It's typically used to implement new features, once all modification are completed you can merge the branch into the master branch.

* What is a commit? What makes a good commit message?
A commit is a way of creating "save points or snapshots" in your repository that allows you to track them over time. Typically you create a new commit when you made changes to the code that warrant deserve recording.

* What is a merge conflict?
A merge conflict occurs when two branches (master and another separate branch) have changed the same parts of a same file. In this scenario, when you try to merge one branch into another it will trigger a merge conflict. Git cannot figure out which change to accept, so it asks you to manually resolve the conflict. This can be done by manually editing the file and making the necessary adjustments. Once you're done, you save the file, add the file and commit the changes. Only then the merge conflict will be resolved.