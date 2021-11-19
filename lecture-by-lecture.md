
# Course Materials

**Quick Links**: [Installing Haskell](https://hackmd.io/@alexhkurz/Hk86XnCzD) ... [BNFC](BNFC-installation.md) ... [Haskell projects](haskell-projects.md) ... [Videos](videos.md)

<!--
### What we (will) have learned

To clarify the learning outcomes: What we have learned in [Part 0]() and [Part 1](what-we-have-learned-1.md) and [Part 2](what-we-have-learned-2.md) and [Part 3](what-we-have-learned-3.md) and [Part 4](what-we-have-learned-4.md) and [Part 5](what-we-have-learned-5.md) and [Part 6](what-we-have-learned-6.md).
-->

### Part 0: Functional Programming 

- [First Haskell Steps](https://hackmd.io/@alexhkurz/SJgHGZ_nw)

- L 1.1: [What is language?](https://hackmd.io/@alexhkurz/HyvPg4YbK). The classic reference for the theory of formal languages is [Hopcroft-Ullman](http://ce.sharif.edu/courses/94-95/1/ce414-2/resources/root/Text%20Books/Automata/John%20E.%20Hopcroft,%20Rajeev%20Motwani,%20Jeffrey%20D.%20Ullman-Introduction%20to%20Automata%20Theory,%20Languages,%20and%20Computations-Prentice%20Hall%20(2006).pdf). Read pages 28-33.
- L 1.2: [Imperative vs functional programming](https://hackmd.io/@alexhkurz/SJKWvna6U) and [Recursive programming in Haskell](https://hackmd.io/@alexhkurz/H1jUka4Gv). For a summary on what we said about Haskell watch the [videos](videos.md) entitled [The computational model of functional programming](https://youtu.be/u_OMwv8tDVg) and [Haskell Tips I](https://youtu.be/wj0j2HjMw6w).
- The overarching aim at the moment is to learn how to use [Recursion as a Problem Solving Technique](https://hackmd.io/@alexhkurz/Sy7M_6yMF). Here are some further resources that may help. I made a video on [Euclid's algorithm](https://youtu.be/ZcJMj0antos), often said to be the oldest recursive algorithm known to us. Read Chapter V of [Goedel, Escher, Bach](https://www.physixfan.com/wp-content/files/GEBen.pdf) and make sure to start with the dialogue "Little Harmonic Labyrinth". It is not a coincidence that this dialogue has a similar structure to the one described in my note on [Rewriting and the Call Stack](https://hackmd.io/@alexhkurz/HJiulVg0U). A great example of the power of recursion as a problem solving technique is the [Towers of Hanoi](https://hackmd.io/@alexhkurz/rJQwvpyMY). 

- L 2.1: Haskell lab. We talked about [Rewriting and the Call Stack](https://hackmd.io/@alexhkurz/HJiulVg0U) and [Towers of Hanoi](https://hackmd.io/@alexhkurz/rJQwvpyMY) as well as the homework. We also talked about [currying](https://en.wikipedia.org/wiki/Currying) and type inference. See the video [Haskell Tips II](https://www.youtube.com/watch?v=naNLE4GLrTo) for a quick review. For the new homework see [Towers of Hanoi](https://hackmd.io/@alexhkurz/rJQwvpyMY).

### Part 1: A Calculator

- L 2.2: A calculator: [Overview](https://hackmd.io/@alexhkurz/HkpdXJ1fK) and [Interpreter](https://hackmd.io/@alexhkurz/rJX-i1kzY) and [Virtual Machine](https://hackmd.io/@alexhkurz/H12igXkzK). For Haskell programming techniques have a look at the videos [Haskell Tips II](https://youtu.be/naNLE4GLrTo)
and [Recursion over algebraic data types](https://youtu.be/2YLfJvOtLwA).

- Videos: [Order of Operations in CFGs](https://youtu.be/jf1xhZSpCvg) and [Uniqueness of Parse Trees](https://youtu.be/3ZLkPwB_c9g).

- L 3.1: We start with a [Short Introduction to Parsing](https://hackmd.io/@alexhkurz/BkSgRX1GF) and then continue with [A Calculator: Parser](https://hackmd.io/@alexhkurz/Byf812aGF). 

- L 3.2: Introducing [Assignment 1](https://github.com/alexhkurz/programming-languages-2021/blob/main/assignment-1.md).

### Part 2: Lambda Calculus

- To watch before lecture 4.1: [Video on Syntax of Lambda Calculus](https://youtu.be/D0kH1BpNr14).

- L 4.1: [Syntax of Lambda Calculus](https://hackmd.io/@alexhkurz/S1D0yP8Bw).

- Videos on parsing lambda-calculus expressions:  [one](https://youtu.be/eYstx7uuE6c) and [two](https://youtu.be/yls1NEUlzZA).

- To watch before the lecture: [Video on Semantics of Lambda Calculus](https://www.youtube.com/watch?v=h4aT42t7v9c#t=0m).

- L 4.2: [Semantics of Lambda Calculus](https://hackmd.io/@alexhkurz/H1e4Nv8Bv).  

- L 5.1: [Variables, Binding, Scope and Substitution](https://hackmd.io/@alexhkurz/SkQzDC6n7).  

- L 5.2: [Church Encodings](https://hackmd.io/@alexhkurz/SyowcD9XF).  

### Part 3: Rewriting

- Before the lecture: Read Chapter 1 of [Goedel Escher Bach](GEB.md).  

- L 6.1: Rewriting: [Examples](https://hackmd.io/@alexhkurz/rkzITG4nD) and [Introduction](https://hackmd.io/@alexhkurz/BJ7AoGcVK).

- L 6.2: We spent most of the time on the homework in [Rewriting: Introduction](https://hackmd.io/@alexhkurz/BJ7AoGcVK). The recording contains a detailed explanation of how to use a truth table to analyse the logical relationships between confluence, termination and existence of unique normal forms.

Homework for next time is to understand the notion of transitive closure of a relation, see the homework in the [Revision Guide on Discrete Maths and Relations](https://hackmd.io/@alexhkurz/SJ1cc-dDr).

- L 7.1: [Confluence and Normal Forms](https://hackmd.io/@alexhkurz/B1wB3rT4F). The recordings follow the write-up closely, but contain more explanations.

- L 7.2: [Termination](https://hackmd.io/@alexhkurz/H1O4bLBHK) and [Invariants](https://hackmd.io/@alexhkurz/r1dp-LBBt). 
The recordings contain a detailed explanation of how to conduct a mathematical proof (that was homework 1), as well as some advice of how to tackle the [string rewriting exercises](https://hackmd.io/@alexhkurz/Syn23oMHF), in particular wrt termination and invariants. 

### Part 4: An Interpreter for a Functional Programming Language

- L 8.1: We run a lab setting up [Assignment 2](https://github.com/alexhkurz/programming-languages-2021/blob/main/assignment-2.md), Part 1.

- L 8.2: [Extensions of lambda-calculus](https://hackmd.io/@alexhkurz/rJEeYqZtw), video review of the [fixed point combinator](https://youtu.be/XvDOwbSh3xE).

### Part 5: Advanced Topics

- L 9.1: As an example for a mathematical proof about a model of computation: We started with a review of the second exercise in [String Rewriting Exercises](https://hackmd.io/@alexhkurz/Syn23oMHF) and then looked the theorem in [Termination of Finitely Branching Systems](https://hackmd.io/@alexhkurz/BkNlJ07IY) and its proof in the textbook.

- L 9.2: We continued with [Termination of Finitely Branching Systems](https://hackmd.io/@alexhkurz/BkNlJ07IY) from the point of view of Types as Specifications and Proofs as Programs, known as **Curry Howard Correspondence**. We also had a brief look at **type inference**, see my notes on [Typed Lambda Calculus](https://hackmd.io/@alexhkurz/S1Sopqo6w).  

- L 10.1: An interlude on Assignment 2. We discussed the design decisions behind the upgrade from LambdaNat2 to LambdaNat4. Details are available in the recording of the lecture (see my message on the mailinglist).

- L 10.2: **Operational and Denotational Semantics.** [Notes](https://hackmd.io/@alexhkurz/Hkf6BTL6P).

- L 11.1: **Theorem Proving.** (Occasionally refers back to the lectures on the Curry-Howard Correspondence and on Operational and Denotational Semantics.) In this lecture we tackle a classical AI topic, namely how to implement *human-style reasoning about algorithms and mathematics*. The starting point is [NumExp.thy](https://github.com/alexhkurz/programming-languages-2021/blob/main/src/NumExp.thy) which implements a simple example of a proof in [Isabelle](https://isabelle.in.tum.de/index.html), which is a programming language that helps us to write proofs and has a proof checker to verify that proofs are correct. We then followed my notes on [Induction](https://hackmd.io/@alexhkurz/HJG08mJvY) arriving at a *formal inductive definition of proof* in a special logic called equational logic. We also proved a simple theorem about commutativity in this logic. With this background we went back into Isabelle and `NumExp.thy` and saw how proofs are implemented as elements of an inductive data type and how the commutativity proof is formally verified in Isabelle. Finally, we looked at the same proof in Idris, a **dependently typed programming language**. Idris implements the Curry-Howard Correspondence we have seen in an earlier lecture. In particular, theorems are types, proofs are programs and proof checking is type checking. More details are available in my notes on [Theorem Proving](https://hackmd.io/@alexhkurz/HJnQDm1wK).

- L 11.2: Program Verification: After a general introduction to [Hoare Logic](https://hackmd.io/Df57tnuCSGaW8wqqsl57FQ), we spent most of the time studying the [Rules of Hoare Logic](https://hackmd.io/@alexhkurz/BJyjAXGoB). We finished with a look at [Dafny](https://hackmd.io/@alexhkurz/SJyBbDQjv) which is a programming language that knows enough about logic so that it can automatically verify substantial correctness properties. 

- L 12.1: We continued with [Hoare Logic](https://hackmd.io/Df57tnuCSGaW8wqqsl57FQ), looking at examples of while loops in some detail. I also have a list of [exercises](https://hackmd.io/@alexhkurz/rkhVZNzjH).

- L 12.2: Overview of next semester's course on [Compiler Construction](https://github.com/alexhkurz/compiler-construction-2022). Undecidability of the [Halting Problem](https://hackmd.io/@alexhkurz/HyHUQYXuY). Extending Lambda Calculus to an Imperative Programming Language. [Assignment 3 out](assignment-3.md).

### Coming up next  


- Deadline for Part 2 of the report Nov 19.

- Thanksgiving break

- Week 13, 14: TBA. Possible topics include: Monads, Polymorphism, Typeinference, Mathematics as a Programming Language, ... let me know if you have particular interests ...

- Deadline for Part 3 of the report.




