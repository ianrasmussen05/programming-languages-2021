## Assignments

(see also [assessment](assessment.md))

Here are the basic rules for assignments, let me know if there are any questions:

- **Groups:** You can work on the assignments in groups. I think the ideal group size is 2. When you do [pair programming](https://en.wikipedia.org/wiki/Pair_programming) always remember that in case of conflict "the reader is always right". Pair programming also works well online, sharing a screen and using git. If you want to make a group of three get in touch with me.  

- **Github:** Each group creates and maintains a **private** github repository which is used for work on the assignments. At the end of the semester your repo will contain a folder, each corresponding to one of the assignments.

        Assignment1
        Assignment2
        Assignment3

  - Each folder should contain a README.md with a critical appraisal as specified below.
  - Filenames are part of the specification. **Do not change specified filenames**. I may run scripts for automated testing.
  - Sharing code for assignments is **plagiarism**. So be careful that your repo is private.
  - All students of the group as well as myself should be collaborators on the group repo.
  - If you are stuck on your work, commit and push what you have to git and ask me a question. I can then inspect your code on git and give you quick feedback.
  - Make good use of git. Commit and push regularly. Typically, **you would commit and push after having implemented and tested a new function**. You need to create a trail of your work. It is not enough to submit complete solutions. I need to be able to see the progress you are making over time. **There will be at least a 10% penalty for not respecting these instructions**. 
  - As git has version control, do not create different files/folders for  different versions of the same source code file. One can always go back and look at the history to access previous versions. Use meaningful commit-messages that help to navigate the history. 
  - To collaborate on the same file, consider using branches (eg one for each student). Do not make copies of the same file: Branches allow collaborators to work on the same file independently. Branches can then be merged later again. 
  - Do not commit machine generated files. Use a [.gitignore](https://git-scm.com/docs/gitignore) file.
- **Partial credit:** The default is that programs that do not run get no credit. 
  - If you think that you put in a lot of effort but just couldn't get it to work use the critical appraisal (see below) to make your case. I cannot give you partial credit if all I have from you is a program that does not run. 
  - If you know that your program does not pass certain tests, do tell me about it in the critical appraisal. You may loose more points, if you try to hide known bugs. 
- **Critical Appraisal:** Each assignment should be accompanied by a `README.md` containing a one page summary of the following information. Group members, date of submission, a description of which parts of the assignment you have accomplished and where you run into difficulties, how you tested your programs, what you learned, interesting observations you made, how you connect the assignment with the theory. (Worth **3 points**, that is, 1/10 of each assignment.)
- **Late Submission:** I know that students have many deadlines, but I don't know when these deadlines are. If you can explain me why you are late and show me that you started in time (eg via work committed to github), you can ask me for a deadline extension. 

Anything unclear? Any questions? Let me know ...

#### List of Assignments

Assignment 1: Functional Programming. A calculator in Haskell.

Assignment 2: Interpreter of a functional programming language

Assignment 3: Interpreter of an imperative programming language


