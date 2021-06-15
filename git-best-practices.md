# On the Use of Git

[Git](https://en.wikipedia.org/wiki/Git) is a version control software created by Linus Torvalds (also responsible for giving us Linux). There are different commercial implementations of git. I mostly use [Github](https://github.com/) and that is what I am referring to in the following.

## New to Git?

Have a look at this [tutorial](https://guides.github.com/activities/hello-world/). Let me know if there are problems or if you have other helpful sources.


## Git best practices

I collect here some lessons learned from using git for [assignments](assignments.md). 

Assignments can be done in groups of two. Create a git repo for your group. This repo should be private as you will use it to share solutions to assignments within your group and with me.

Proper use of git will be considered for grading. Complete solutions uploaded to the repo just before submission and not containing a trail of your work **will not be accepted for grading**.

- Unless there are major changes in the composition of the groups, do not make a new repo for a new assignment. Rather create meaningful subfolders such as `Assignment2`, etc.
- Use the repo to create a trail of your work. Commit and push often.
- Break your assignments into milestones. Make sure all milestones are pushed.
- Be careful about what you commit:  
   - Do not track/commit/push machine generated files. 
   - Avoid unthinking use of `git add *`. Only add files that should be tracked. 
   - Run `git status`. If you see under `Untracked files` names that you don't recognize, they are likely machine generated files. Do not track those. Rather add these names to a file named `.gitignore` at the root of your repo.
  - Build up your `.gitignore` incrementally using `git status` and add files you do not want to track to `.gitignore` step by step. You can start from [my .gitignore](https://github.com/alexhkurz/programming-languages-2020/blob/master/.gitignore) file.

- Do not create different versions of files by copying them. [Use branches](http://shafiul.github.io/gitbook/3_basic_branching_and_merging.html). 

## Further reading

The links below are written for more complex projects than a typical assignment, but it cannot harm to have a look:

- [The Git Community Book](http://shafiul.github.io/gitbook/index.html)
- [Commit Often, Perfect Later, Publish Once: Git Best Practices](https://sethrobertson.github.io/GitBestPractices/)
- [Examples of gitignore files](https://github.com/github/gitignore)
-  Some pages from 
    - [github.com](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
      - [creating](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-new-repository)
      - [cloning](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
    - [git-scm.com](https://git-scm.com/):
      - [Getting a Git Repository (clone)](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)
      - [Working with Remotes](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)
      - [Contributing to a Project (fork)](https://git-scm.com/book/en/v2/GitHub-Contributing-to-a-Project) (probably not relevant for us)
- Further information:
  - [How do I update a GitHub forked repository?](https://stackoverflow.com/questions/7244321/how-do-i-update-a-github-forked-repository)

## Some commands

- `git reset --hard` [throws away all uncommitted local changes](http://shafiul.github.io/gitbook/4_undoing_in_git_-_reset,_checkout_and_revert.html)
