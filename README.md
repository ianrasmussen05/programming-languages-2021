# Programming Languages 

(currently running in Fall 2021)

You already know some programming languages (such as Python, Java, or C++) and you are able to teach yourself a new one. But did you ever wonder how to design your own programming language? How would you even get started on a project like this? 

After this course you should be able to develop your own small programming language. We will learn how to define the syntax of a programming language using a context-free grammar, how to use a parser generator and how to write an interpreter by recursion on abstract syntax.

- Our first programming language will just be high-school arithmetic and the interpreter will be a simple calculator. To appreciate that even this is not such an easy task, I invite you to implement a calculator in your favourite programming language before we start the course. (The challenge consists in extracting from the input string the relevant information about numbers, operations and order of operations. For example, as you will remember from high-school algebra, the order of the operations in the input string can be very different from the order in which the interpreter has to evaluate them.) 
- Our second example, will be the smallest proper programming language, lambda calculus. For this we will need to learn about variable binding and recursion. 
- Finally, we extend lambda calculus to a mixed-paradigm language including higher-order functions, recursion, assignments, loops, pointers, and arrays.

On the way, we will introduce various theoretical concepts that underpin Programming Languages and open windows to topics in programming languages research.

We will also have the opportunity to touch on philosophical questions such as "What is Computation?", "What is Meaning?", "What is Information?", "What is an Algorithm?" and discuss whether it is possible to give a precise and satisfactory answer.

**Notes and Materials** for a course on Programming Languages at Chapman University.

- [Syllabus](syllabus.md)  
- [Overview](overview.md)  
- [Contact](contact.md)  

**Quick links:**

- [Lecture by Lecture](lecture-by-lecture.md)  
- [Discussion Forum](discussion-forum.md)  
- [Assignments](assignments.md)
- [Report](report.md)
- [On the Use of Git](git-best-practices.md)
- [Relationship to Some Other Courses at Chapman](other-chapman-courses.md)
- [Discussion Topics](discussion-topics.md)

**Further Reading:**

- [Other Courses](other-courses-on-programming-languages.md) on Programming Languages
- ["Must Reads"](must-reads.md)
- [History of Programming Languages](history.md)



## Acknowledgements

This course has been developed by Alexander Kurz and Samuel Balco for the students of Chapman University and is taught by Alexander Kurz. 

The specific way we intertwine theory and practice may be original, but we build on a long tradition of teaching courses on  principles of programming languages. The idea that the best way to understand how programming languages work under the hood is to learn how to build your own, goes back at least to the MIT course/"Wizard Book" by Abelson and Sussman, [Structure and Interpretation of Computer Programs](https://mitpress.mit.edu/sites/default/files/sicp/index.html), which is still worth reading today. Our use of the parser generator BNFC for the language `LambdaNat` follows Aarne Ranta's book [Implementing Programming Langugages](http://www.grammaticalframework.org/ipl-book), which forms the basis for the [Programming Language Technology](http://www.cse.chalmers.se/edu/course/DAT151/) course at Chalmers University. We will hear more about this in our course on Compiler Construction next semester. `LambdaNat` itself is a lambda calculus with just enough additional "syntactic sugar" so that writing programs in `LambdaNat` allows us to do simple mainstream functional programming. The way we then extend `LambdaNat` to our second language, `LambdaFun`, by adding while loops, memory allocation, assignment, and pointers is inspired by Michael Spivey's course on [Programming Languages](https://spivey.oriel.ox.ac.uk/corner/Welcome_to_Spivey%27s_Corner) at Oxford University.

I am also grateful to my friends and colleagues from the [Midlands Graduate School in the Foundations of Computing Science](http://www.cs.nott.ac.uk/MGS/) who have influenced with their graduate level courses from 2002 onwards the choice of material. In fact, it is one of the aims of this course to provide at the undergraduate level the foundations that will equip interested students with the knowledge needed to study more advanced topics in programming languages. Many of the paragraphs labelled "Further Study'' are meant to provide bridges to such graduate level courses.

Many thanks to all with whom I had the opportunity to discuss the contents of the course, including (but not limited to) Roy Crole,  Peter Jipsen, Drew Moshier, Paula Severi, and Fer-Jan de Vries; to all the colleagues from whom I have been learning over the years; and, most of all, to the students of 2018/19/20 for continuing challenge and feedback: 2018 was a theory course, 2019 added the interpreters, 2020 added more on Haskell and 2021 will be different again (the overlap between 2018 and 2020 was just 4 weeks of material: Lambda Calculus, Rewriting and Hoare Logic).
