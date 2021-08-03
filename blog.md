# Blog    

Deadline: First day after Thanksgiving break. (Tip: Start your blog in the summer break.)

## Introduction

This course can only scratch the surface of so many topics in programming languages, ranging from very practical (which programming language is best suited for what type of application) to purely mathematical (algorithmic complexity theory, algebra, logic, category theory, proof theory, ...). The blog is an opportunity to dig a bit deeper in what interests you most.

Learning a new programming language is always a challenge, in particular if it is your first functional programming language. You only know that you understand something if you can explain it to somebody else. So a good way to start the blog is to write about Haskell. Moreover, for the course we only need some basics features of Haskell, essentially recursion over [algebraic data types](https://www.google.com/search?q=haskell+%22algebraic+data+type%22&oq=haskell+%22algebraic+data+type%22). So I invite you to take the opportunity to learn more about Haskell than we need and to write a blog/tutorial on what you learned is a great way to showcase this.

For more detailed ideas and suggestions see below.

## Setting up a blog

The minimal way to set up a blog is as follows:

- Create a github repository. I leave it to you whether you want to keep it private, but if you are aiming for an "A"-blog you should also publish it.
- Add a `README.md`.
- Make `.md` files for each blog entry. Link them from the README.

You can also use [github pages](https://pages.github.com/), which offers additional features such as a number of themes to choose from.

To learn markdown, have a look at this  [Markdown Guide](https://www.markdownguide.org/basic-syntax) and one of the many [cheat sheets](https://www.markdownguide.org/cheat-sheet). Markdown is easy. And it is what I use for this course, so you can also look at my sources. Btw, you can use all of html in markdown. It makes the writing more cumbersome, but also gives you additional options. 

GitHub and markdown is simple to use and I require this as the default for your blog. If you want to use something more sophisticated I will support this, but get in touch with me before you make any decision.

Here are some tips:

- Link your blog entries from the README.
- Never paste naked urls into md, use `[name](url)`.
- Did yo spellcheck your blogs? Does form/layout support content?
- Typeset code as code, with syntax highlighting. 
- Add a list of references at the end of each blog.

Personally, I am more interested in content than in form, but form is important as well. Just ask yourself whether the form supports the understanding of the content or whether it distracts from what you want to achieve. For example, spelling mistakes are always distracting. And long paragraphs are almost always bad form. 

You can take my github repo for this course as a guideline for your blog, but I don't want to discourage more sophisticated design of a webpage (or better use of the English language). 

## Writing Tips

The blog is not an English assignment, but I find this classic and entertaining [advice by Orwell](https://www.orwell.ru/library/essays/politics/english/e_polit) always useful. 
- To avoid what Orwell calls "this mixture of vagueness and sheer incompetence" is particularly important in technical writing. 
- "A scrupulous writer, in every sentence that he writes, will ask himself at least four questions, thus: What am I trying to say? What words will express it? What image or idiom will make it clearer? Is this image fresh enough to have an effect? And he will probably ask himself two more: Could I put it more shortly? Have I said anything that is avoidably ugly?" Perhaps metaphors play a lesser role in our kind of technical writing, but if you replace "image" above by "example", Orwell's remarks are again exactly to the point.
- Orwell recommends to avoid writing something just because it sounds good. Instead, 
    - "put off using words as long as possible and get one's meaning as clear as one can through pictures".
    - first "think wordlessly, and then, [...] describe the thing you have been visualising". 



## Organisation

My expectation is that you write the blog like a diary, as you go through the course. Write it with beginning Haskellers in mind. 

**Drop me an email when you made a new entry.**

Your blog **should**
- approximately/on average has one entry/page per week (**10 in total** should suffice);
- be organised by topic with easier material first;
- make sense to readers who do not take this course ... don't talk from student to professor but rather from professional to professional;
- you can draw on all kind of resources, but always make your own examples, observations, conclusions;
- interleave narrative with code (all code must be tested and run, make sure the reader knows how to run your code; consider using a service such as [repl.it](https://repl.it/@alexhkurz/fibonacci#main.hs));
- finish each blog with list of references and recommendations for further reading;
- ...

Your blog **should not** 
- post solutions to homework, assignments, and projects I proposed as I may want to reuse them in future editions of the course; 
- simply review the material we covered in lectures.

If you are in doubt on the "shoulds" and "should-nots" get in touch (better earlier than late).

***I don't want to limit your creativity, so let me know if you have your own ideas.***


## General remarks on content

Make the blog interesting to your readers including myself. Do not repeat material that is already in the lecture notes.  Explore on your own. If you write about material we have covered in the lectures, make your own examples and add your own angle. **Do not post answers to homework and assignments.**

If you write a Haskell tutorial:
- It is essential that you pursue a [project](haskell-projects.md), however small. Building up the project step by step is a great way to structure a tutorial.

While writing the blog, keep in mind that I am interested in answers to the following questions:
- How do newcomers learn functional programming?
- Which external sources (videos, blogs, tutorials, etc) do you find most useful?
- How does Haskell compare to your favourite programming language? Give examples of the same algorithm written in your favourite language and in Haskell. What are the respectives strengths and weaknesses of the two programming paradigms?
- What are, in your opinion, the major stumbling blocks in learning Haskell?
- Which project did you implement in Haskell? What did you learn? Can you explain your project in a way that the reader wants to run and/or recreate it?

## Grading Guidelines

Programming Languages is a vast subject. At the core of this course are three interpreters of increasing complexity. They are assessed in three assigments. This is supplemented by some theory on lambda calculus and rewriting, assessed in the midterm and final exam. But there are many topics we can only touch upon.  Most obviously, there is much more to Haskell than we strictly need for the course. Similarly, there are many theoretical topics we mention only in passing such as computability, Turing machines, combinatory logic, theorem proving, operational and denotational semantics, type theory, verification etc. The overarching rationale for the grading guidelines below is to assess how much you engage with some of the ramifications of Programming Languages that go beyond the material of the course.

The grading guidelines below are somewhat tailored to a blog that concentrates mainly on Haskell. As indicated above, other topics related to the course are also welcome. If in doubt, get in touch.

- **D:** Demonstrates *basic* familiarity with Haskell and/or other aspects of Programming Languages.  
- **C:** Demonstrates *adequate* familiarity with Haskell and/or other aspects of Programming Languages. Discusses interesting features of Haskell and illustrates them with their own project. 
- **B:** Demonstrates *good* understanding of Haskell and/or other aspects of Programming Languages. Makes interesting observations that do not merely repeat points made in the lectures.  Develops material that goes beyond what has been treated in class and standard resources such as Wikipedia. Can be recommended to a beginning Haskeller as a resource. Makes connections between the practical and theoretical parts of the course. 
- **A:** Is inspired by the course material but takes an independent perspective and *stands on its own*. Demonstrates a very good understanding of Haskell and/or other aspects of Programming Languages. Makes interesting observations and contains material that goes significantly beyond what has been treated in class. Will be of substantial interest to a beginning Haskeller or software engineer. Makes interesting connections between the practical and theoretical aspects. Typically would discuss some of the advanced features of Haskell such as type classes or monads and/or develop their own project (but there are many possibilities here ... get in touch to discuss more.)

Some further considerations:

- Spelling, typesetting, layout, and structure will also be taken into account for grading. Does the form support the understanding of (or does it distract from) the content? 
- Every blog entry should have something interesting to say and be built around a central idea. If a blog entry reads just like a lists of items without a connecting narrative something is missing.
- A way to describe when a blog gets full points: You would be proud to add it to your resume.
- As usual, for full points I need to be able to see a trail of your work on git (if you don't want to use git get in touch early). Submitting everything in one go just before the deadline will incur a penalty of at least 10%.

Again, if you have your own ideas, let me know. I am happy to adapt these guidelines if they do not fit what you have in mind.

## Ideas for the blog

These are just suggestions, explore on your own. **The blog is a space where you can be creative.** Some items require more work than others. Feel free to expand interesting topics into a series of blog posts. Get in touch with any questions.

#### Haskell

-  Write a Haskell tutorial. Choose a [project](haskell-projects.md). Cover some of the topics we only touch upon in the lectures such as IO, error messages, type classes, monads, ... 
- Benchmark the same algorithms in (compiled!) Haskell and some other programming language. You can use [gnomon](https://github.com/paypal/gnomon) to measure the time that programs take to run. Evaluate your findings, explore what others have done, compare. (A good blog is not only reporting on reproducible experiments but also draws some interesting conclusions.)
- Explain how to use docker to setup Haskell and bnfc. Make a dockerfile that we could use to run Haskell, bnfc and the assignments.
-  I collected some ideas for [Haskell projects](haskell-projects.md) you might want to try. Here are some more ideas:
    - Haskell and $\lambda$-calculus: 
      - Write the same program in both languages and compare.
      - Study Church numerals. Make examples. Implement Church numberals and run them in Haskell.
    -  If you know C and have experience in programming with pointers, you will be interested to learn that all of this is still in Haskell, but hidden in the compiler. Study how the Haskell compiler makes working with lists efficient. (This is a big topic and would be worth a whole series of blog posts.)
    - Haskell is lazy, which is interesting for programming with infinite data structures such as streams ... I should add a link to get your started ... 
- The article [Why Functional Programming Matters](https://www.cs.kent.ac.uk/people/staff/dat/miranda/whyfp90.pdf) by John Hughes argues that the advantage of functional programming over imperative programming stems from the increased modularity/compositionality afforded by higher-order functions and laziness. Summarize and evaluate this argument (don't forget to research potential disadvantages of laziness).

#### Theory (Mathematics)

- Why is lambda-calculus Turing complete? How could one simulate a Turing-machine in lambda-calculus? What about the converse?
- What is the halting problem? Why is it undecidable? What are other undecidable problem?
- What is combinatory logic? Is combinatory logic Turing complete? 
- Not all terminating programs can be proved terminating with a termination measure that takes values in natural numbers. How can we go beyond this?
- [Reversible computing](https://hackmd.io/@alexhkurz/H1PIwnSqw).
- Interactive theorem provers (Isabelle, Coq, Agda, Lean, ...) are functional programming languages in which one can prove mathematical theorems. Explore.
- ...

####  Theory (Algorithms)

- Rewriting: Choose one of your favourite algorithms and describe it as a rewrite system. 
- Beta-reduction is an important computational mechanism. Explore how to efficiently implement it using de Bruin indices.
- Can we prove confluence automatically? What is the Knuth-Bendix algorithm?
- ...

#### Theory (Software Tools)

- Various tools can be implemented to better understand theoretical concepts. For example a series of programs that can be run in the browser in order to analyse the kind of string rewriting exercises we have used for rewriting theory.
- Some modern programming languages such as [Dafny](https://hackmd.io/@alexhkurz/SJyBbDQjv) implement verification of termination and Hoare triples. Explore.
- ...

#### General Programming Languages Topics

- Multi-paradigm languages:
  - Haskell is close to what one calls "pure functional programming" but there are also multi-paradigm languages such as OCaml and, more recently, Scala and Julia. You can pick Julia or Scala and write one or more blogs about how they integrate FP and OO. What are the benefits (apart from just having both FP and OO)?
  - In case you have an interest in logic programming (eg PROLOG), there is some interesting literature on building multi-paradigm languages that combine functional and logic programming. 

- ...

#### Interpreters

See also the suggestions for extending the calculator at [Haskell projects](haskell-projects.md).

Improve the `LambdaNat5` interpreter. See also my suggestions for [extra credit](extra-credit.md). Some of these may be more difficult than others, get in touch before you spend a huge amount of time on this.
  - Efficiency:
    - Haskell numbers instead of successor numbers
    - call by value instead of call by name
    - better substitution/beta-reduction
    - call stack
    - ...
  - Usability
    - Booleans
    - error messages
    - Haskell numbers
    - pattern matching
    - ...

#### Other Topics

See also the Discussion Topics in the [README](README.md) ... and let me know if you have your own ideas ... **the blog is a space where you can be creative** ...
