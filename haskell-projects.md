# Haskell projects

I list some Haskell projects that should not be too difficult in themselves, but interesting enough for some programming practice.

## Starting Out

Maybe the following examples can inspire you to choose your Haskell project:

- Two nice beginner's projects that do not require any prerequisites were implemented by [Gary Zeri](https://github.com/GaryZ700/Haskell_Blog/blob/master/README.md) for the 2020 Programming Languages course. 

- I implemented the beginnings of an automata theory course in Haskell in my [very short introduction to automata and Haskell](https://hackmd.io/@alexhkurz/HylLKujCP).

- Let me know your own ideas ...

## From the Programming Languages Course

### Successor Arithmetic (and, possibly, Theorem Proving)

We implemented some arithmetic of successor numbers. A nice project could be to extend this to more operations.

One of the great advantages of successor numbers is that it is easier to prove correctness of various algorithms. This is supported by programming languages such as Isabelle, Idris or Lean. For an extra challenge, in particular if you are a math major, this could be a very interesting project.

### Calculator

Extend [the calculator](https://hackmd.io/@alexhkurz/HJVtVl068) from the lecture with further features:

- Booleans
- if-then-else
- use the Maybe monad for [safe division](https://www.youtube.com/watch?v=t1e8gqXLbsU)
- floating points
- fractions
- ...

It would also be interesting to hook the calculator up with a web interface, but I have not done this myself, so I cannot give you specific technical advice on this.

### Roman Numerals

The idea is to implement a simple [string rewriting system](https://hackmd.io/@alexhkurz/Syn23oMHF), as discussed in the lectures, in Haskell. My solution has 17 lines of code (rewrite rules, applying a list of rules to a string, normalising) plus some more to convert between roman numerals and integers for testing purposes.

Here is the main idea of how we can add roman numerals using a rewrite system.

Say I want to add `II` and `LI`. Instead of "+" I just concatenate the two strings and then rewrite them to normal form as follows
    
    IILI ->
    ILII ->
    LIII

One thing to think about is how to deal with numerals such as `IV`. But apart from this everything should be  straightforward. So maybe you first want to forbid numerals such as `IV` and then to think about how to extend your solution.

In terms of Haskell, I used `replace` from `Data.Text` to implement one computation step. To avoid 

    Couldn't match type ‘[Char]’ with ‘Data.Text’

error messages, enter `*Main> :set -XOverloadedStrings` in the Haskell console before running your code. Here is an example of how it works on my side.

    >ghci roman_numerals.hs
    *Main> :set -XOverloadedStrings
    *Main> normalise ("II" +++ "LI")
    "LIII"

where `x +++ y` is defined as `Data.Text.concat [x, y]`.

So far so good. Addition is easy. Just concatenation of strings, then rewriting to normal form. What about subtraction and multipliation? 

### Abacus

Addition of roman numerals is easy to program as a string rewriting system. But this is not the way you want to compute. How did Roman merchants do their computations?

As far as I know, they did use a place-value system base 10. They just did not have a symbol to write zero as text. But they could "write" zero on a counting board or an [abacus](https://www.ee.ryerson.ca/~elf/abacus/history.html). 

There are many different versions of abaci. The simplest to understand are those with 10 beads. If you watch a [video](https://www.youtube.com/watch?v=SYRyKYmOJwM) on how to do addition with an abacus, you really see that it is a rewrite system. 

Implement addition of abacus-numbers in Haskell.

(I didn't do this myself, so I don't know how much work there is involved exactly.)

A more sophisticated version of the abacus is the [soroban](https://en.wikipedia.org/wiki/Soroban). It is an interesting mix of a [place-value system](https://en.wikipedia.org/wiki/Positional_notation) with Roman numerals as one has a "digit" for the value $5$. 

## A Toolbox for String Rewriting Systems

It would be helpful to be able to explore [examples of string rewriting system](https://hackmd.io/@alexhkurz/Syn23oMHF) with the help of the computer. Write Haskell programs that would help us to do this.

<!--
### See also ...

... the [extra credit](extra-credit.md) projects.
-->



