# Relationship to Other Courses

Below I will indicate briefly how the course Programming Languages relates to some other courses taught at Chapman.

## Discrete Mathematics

There are many connections to the courses Discrete Mathematics 1 and 2. 

I collected the [prerequisites on sets, logic and relations](https://hackmd.io/@alexhkurz/SJ1cc-dDr) on discrete Mathematics. In addition, we will use modular arithmetic. 

To understand various models of computation, we will study some basic notions of rewriting. In particular, we learn about 
- [confluence and normal forms](https://hackmd.io/@alexhkurz/r1hRZaG8v),
- [invariants](https://hackmd.io/@alexhkurz/BkMoUhXvD) and 
- how to use [termination measures](https://hackmd.io/@alexhkurz/BJoZF44Iw) to prove termination. 

## Analysis of Algorithms

We illustrate the important concept of **non-deterministic algorithms** in various places. For example, the operational semantics of lambda-calculus is non-determinstic which opens up the possibility for call-by-value/strict languages (C, Python, Java, ML, ...) and call-by-name/non-strict/lazy languages (Haskell). We also discuss that different evaluation strategies can affect the **space and time complexity** of algorithms.

We use [invariants](https://hackmd.io/@alexhkurz/BkMoUhXvD) to prove the correctness of algorithms.

We use [termination measures](https://hackmd.io/@alexhkurz/BJoZF44Iw) to prove termination of algorithms.

We bring the last two items together and introduce [Hoare Logic](https://hackmd.io/Df57tnuCSGaW8wqqsl57FQ) as a method of **program verification**. We also verify simple programs in [Dafny](https://hackmd.io/@alexhkurz/SJyBbDQjv).

The video lecture on [mergesort](https://youtu.be/W2CknJGgzr0) brings together most of these topics (and more).

## Cryptography

... sth to add about modular arithmetic and verification ...

## Compiler Construction

In Programming Languages we learn how to build interpreters for small programming languages. In Compiler Construction we will see how to scale this to bigger languages. Morevoer, we will see that the principle of recursion over abstract syntax also allows us to implement  type checking and code generation.