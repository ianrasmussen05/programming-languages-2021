# Report

Instead of a midterm and final exam, I will experiment this year with letting you write a report instead.

I believe that this will have several advantages:
- You will have more opportunities to show me what you have been learning.
- I will have more opportunities to give you feedback.
- You will be able to react to my feedback by improving your report.
- You will learn how to use LaTeX to write a professional report.

The report will be divided in three parts.

- Part 1 (40 points, approx 10 pages) will be on Haskell.
- Part 2 (40 points, approx 10 pages) will be on the theoretical aspects of the course.
- Part 3 (20 points, approx 5 pages) will be a mini-project of your choice where you can go beyond what we do in class.

The [LaTeX template](report.tex) and the compiled [pdf](report.pdf).

**Deadlines:**
- Part 1: October 17.
- Part 2: November 19.
- Part 3: December 21.

Submission by [email](mailto:akurz@chapman.edu?subject=Report%20Part%20X), where X denotes the part. Send me a pdf or a link to your private github repo where you keep your .tex and .pdf as well as the accompanying code of your Haskell project. (Get in touch if you want to do a theory project without Haskell code.)

## General Considerations

This course can only scratch the surface of so many topics in programming languages, ranging from very practical (which programming language is best suited for what type of application) to purely mathematical (algorithmic complexity theory, algebra, logic, category theory, proof theory, ...). The report is an opportunity to dig a bit deeper in what interests you most.

Learning a new programming language is always a challenge, in particular if it is your first functional programming language. You only know that you understand something if you can explain it to somebody else. So a good way to start the report is to write about Haskell. Moreover, for the course we only need some basics features of Haskell, essentially recursion over [algebraic data types](https://www.google.com/search?q=haskell+%22algebraic+data+type%22&oq=haskell+%22algebraic+data+type%22). So I invite you to take the opportunity to learn more about Haskell than we need and to write a tutorial on what you learned is a great way to showcase this.

## Writing Tips

The blog is not an English assignment, but I find this classic and entertaining [advice by George Orwell](https://www.orwell.ru/library/essays/politics/english/e_polit) always useful. 
- To avoid what Orwell calls "this mixture of vagueness and sheer incompetence" is particularly important in technical writing. 
- "A scrupulous writer, in every sentence that he writes, will ask himself at least four questions, thus: What am I trying to say? What words will express it? What image or idiom will make it clearer? Is this image fresh enough to have an effect? And he will probably ask himself two more: Could I put it more shortly? Have I said anything that is avoidably ugly?" Perhaps metaphors play a lesser role in our kind of technical writing, but if you replace "image" above by "example", Orwell's remarks are again exactly to the point.
- Orwell recommends to avoid writing something just because it sounds good. Instead, 
    - "put off using words as long as possible and get one's meaning as clear as one can through pictures". 
    - first "think wordlessly, and then, [...] describe the thing you have been visualising". 


## General remarks on content

Make the report interesting to a readers including myself. Do not simply repeat material that is already in the lecture notes.  Explore on your own. If you write about material we have covered in the lectures, make your own examples and add your own angle. Your report can build on homework if you integrate them into a narrative that explains how it fits into the course;

For Part I, it is highly recommended that you pursue a [project](haskell-projects.md), however small. Building up the project step by step is a great way to structure a tutorial. This project can also be pursued further in Part III.

While writing the report, keep in mind that I am interested in answers to the following questions:
- How do newcomers learn functional programming?
- Which external sources (videos, blogs, tutorials, etc) do you find most useful?
- How does Haskell compare to your favourite programming language? Give examples of the same algorithm written in your favourite language and in Haskell. What are the respectives strengths and weaknesses of the two programming paradigms?
- What are, in your opinion, the major stumbling blocks in learning Haskell?

More Writing Tips:
- Typeset code different from text.
- Do not always go with the first reference that comes up, try to find interesting references for each topic. Cite your references throughout the text.
- In case of doubt, put rather more references. The basic idea of scientific writing is that all claims must be justified. (Of course, every community has its common knowledge.) 
- In Latex, you can use  `\href` to link to online material.



## Possible Ideas for the Report


To review and explain what we do in the course is a good starting point, but I would expect that you take the opportunity to explore on your own. The following is just a list of prompts to give you some ideas of what is possible ...

***I don't want to limit your creativity, so let me know if you have your own ideas.***


### Haskell
-  Write a Haskell tutorial. Make your own examples that you think would help a beginning Haskeller to understand Haskell better.
- Benchmark the same algorithms in Haskell, Python, etc. You can use [gnomon](https://github.com/paypal/gnomon) to measure the time that programs take to run.
-  I collected some ideas for [Haskell projects](haskell-projects.md) you might want to try.
- Haskell and lambda-calculus: 
  - Write the same program in both languages and compare.
  - Study Church numerals. Make examples. Implement Church numerals and run them in Haskell.
-  If you know C and have experience in programming with pointers, you will be interested to learn that all of this is still in Haskell, but hidden in the compiler. Study how the Haskell compiler makes working with lists efficient. (This is a big topic and would be worth a whole series of blog posts.)
- Write about some features of Haskell that only appear on the sidelines in this course:
    - Haskell is lazy
    - Haskell has type classes
    - Haskell has monads 
- Topics we didn't have time for at all:
    - History of Haskell  
    - Application of Haskell in industry

### Theory

(much of this will make sense only after the first half of the course)

- Why is lambda-calculus Turing complete?
- What is the halting problem? Why is it undecidable? What are other undecidable problem?
- What is combinatory logic? Is combinatory logic Turing complete? 
- Beta-reduction is an important computational mechanism. Explore how to efficiently implement it using de Bruin indices.
- Can we prove confluence automatically? What is the Knuth-Bendix algorithm?
- Not all terminating programs can be proved terminating with a termination measure that takes values in natural numbers. How can we go beyond this?
- Some modern programming languages such as [Dafny](https://hackmd.io/@alexhkurz/SJyBbDQjv) implement verification of termination and Hoare triples. Explore.
- [Reversible computing](https://hackmd.io/@alexhkurz/H1PIwnSqw).
- Interactive theorem provers (Isabelle, Coq, Agda, Lean, ...) are functional programming languages in which one can prove mathematical theorems. Explore.

### General Programming Languages Topics

- Multi-paradigm languages:
  - Haskell is close to what one calls "pure functional programming" but there are also multi-paradigm languages such as OCaml and, more recently, Scala and Julia. You can pick Julia or Scala and write one or more blogs about how they integrate FP and OO. What are the benefits (apart from just having both FP and OO)?
  - In case you have an interest in logic programming (eg PROLOG), there is some interesting literature on building multi-paradigm languages that combine functional and logic programming. 

#### Other Topics

- ... let me know if you have your own ideas ... the blog is a space where you can be creative ...

- Maybe browising through the list of [discussion topics](discussion-topics.md) gives some further ideas.

## Grading Guidelines

Programming Languages is a vast subject. At the core of this course are three interpreters of increasing complexity. They are assessed in three assignments. This is supplemented by some theory on lambda calculus and rewriting. But there are many topics we can only touch upon.  Most obviously, there is much more to Haskell than we strictly need for the course. Similarly, there are many theoretical topics we mention only in passing such as computability, Turing machines, combinatory logic, theorem proving, operational and denotational semantics, type theory, verification etc. 

The overarching rationale for the grading guidelines below is to assess how much you master of the practice of Haskell and the theory of programming languages and how far you engage with some of the ramifications of Programming Languages that go beyond the material of the course.

- **D:** Demonstrates *basic* familiarity with Haskell and the theory of Programming Languages as presented in this course.
- **C:** Demonstrates *adequate* familiarity with Haskell and the theory of Programming Languages as presented in this course. Discusses interesting features of Haskell and illustrates them with their own project. Reviews the theoretical concepts treated in the course and illustrates them with a selection of homework and own examples.
- **B:** Demonstrates *good* understanding of Haskell and the theory of Programming Languages as presented in this course. In addition to the previous item: Develops material that goes beyond what has been treated in class. Can be recommended to next year's students as a learning resource. Makes connections between the practical and theoretical parts of the course. 
- **A:** Demonstrates *excellent* understanding of Haskell and the theory of Programming Languages as presented in this course. Is inspired by the course material but takes an independent perspective and *stands on its own*. Develops material that goes significantly beyond what has been treated in class. Can be highly recommended to next year's students as a learning resource. Makes interesting connections between the practical and theoretical aspects. 

Some further considerations:

- Spelling, typesetting, layout, and structure will also be taken into account for grading. Does the form support the understanding of (or does it distract from) the content? 
- Every section should have something interesting to say and be built around a central idea. If a section reads just like a lists of items without a connecting narrative something is missing.
- A way to describe when a report gets full points: You would be proud to add it to your resume and I would be happy to recommend it to next year's students.
- As usual, for full points I need to be able to see a trail of your work on git (if you don't want to use git get in touch early ... overleaf could be an alternative). 

Again, if you have your own ideas, let me know. I am happy to adapt these guidelines if they do not fit what you have in mind.

<!--
Grading Guidelines.

... 

Suggestions for Part I:

Suggestions for Part II:

Suggestions for Part III:
-->


