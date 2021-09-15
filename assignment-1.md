# Assignment 1

The assignment comes in 3 parts and will be implemented in Haskell. We will use Haskell throughout this course and also next semester in Compiler Construction. 

(As a footnote, I want to add that Haskell is only a (very good) tool for us, one could use any other programming language for the same purpose in principle, even if it was infeasible in practice. In fact, if you want to compare Haskell to another programming language you already know, this could be an idea for the report to implement this assignment also in, say, one of Java, Python, C++, etc and then to compare the two implementations.)

## Administrative Preliminaries

- Read carefully my general notes on [assignments](assignments.md).

- In your folder Assignment1 make subfolders `Part1`, etc.

## Proper use of git will be taken into account for grading

- Commit each time, with *meaningful messages*, after you implemented and *tested* 
  - a function in `airthmetic.hs`,
  - a case of `eval` in `numbers3.hs`, 
  - a rule of `numbers.cf`; 

## Submission 

Submission is by sending me an email with a link to the repository. Do not forget the critical appraisal, see [assignments](assignments.md).

## Bonus questions

Bonus questions are more work for less points and are not needed to achieve maximum points. But you can collect bonus points, either to challenge yourself, or to build up a buffer of points you can use at the end of the term.

## Part 1: A Virtual Machine (VM) for Arithmetic (?? points)

The aim of the first part is to practice programming by recursion over algebraic data types.

(The following description got quite long, but it is not as bad as it looks at first sight. The functions specified below can be implemented in 31 (or so) lines of code.)

### Summary of Instructions

- Download the [specification `arithmetic-specification.hs`](src/Haskell/arithmetic-specification.hs). The aim is to fill in definitions for all functions.
- Do not use functions converting between Haskell-numbers VM-numbers to implement VM-arithmetic. Only use them for normalisation-by-evaluation (see below) and testing.
- Start from the file [`arithmetic.hs`](src/Haskell/arithmetic.hs). You should be able to run it as `runhaskell arithmetic.hs`. 


### Summary of Task

The overall idea is to explore how to extend our implementation of natural numbers 

    data NN = O | S NN

to integers and fractions. We will detail this in the following.

### Integers

The idea is that we can use pairs `(n,m)` of natural numbers to represent the integer `n-m`. In Haskell we define a type `II` (to remind us of "Integer") as the type of pairs of `NN`s:

    type II = (NN, NN)

(The difference between `data` and `type` is that the latter defines an abbreviation and does not create a new type.)

The task now is to implement some familiar arithmetic operations directly on such pairs of numbers, in particular:

    addI :: II -> II -> II
    multI :: II -> II -> II
    subtrI :: II -> II -> II
    negI :: II -> II

### Fractions

Simlarly, a fraction can be represented as a pair `(numerator,denominator)` where the numerator is an integer and the denominator is a positive integer. So we first define a data type of positive numbers (positive numbers start at 1, not 0)

    data PP = I | T PP

and then a type of fractions as a type of pairs `(numerator, denominator)` of type `(NN,PN)`

    type Frac = (NN,PN)

To program with fractions it is good style to access the first and second component of a pair via pattern matching. Alternatively, given a `pair` in Haskell, one can access the components with `fst pair` and `snd pair`. You can test this in the Haskell console as follows.

    > pair = (2,3)
    > fst pair
    2
    > snd pair
    3

The following functions will be implemented by recursion on `PP`.

    addP :: PP -> PP -> PP
    multP :: PP -> PP -> PP
    ii_pp :: PP -> II

Since Haskell is strongly typed and does not have subtyping, a number of type `PP` is always different from a number of type `II`, so we need a function `ii_pp :: PP -> II` that does the *type-casting*.

Next, we use these functions to implement

    addQ :: QQ -> QQ -> QQ
    multQ :: QQ -> QQ -> QQ

### Normalisation

You may have noticed that the same integer can be represented in different ways, for example `(S (S O), O)` and `(S( S (S O)), S O)` both represent 2. But `(S (S O), O)` is special in the sense that it has no negative part. Such special forms are often called normal forms and the process of converting data into normal form is called **normalisation**.

Using recursion, write a function

    normalizeI :: II -> II

that converts and number if type `II` into its normal form.

**Bonus question:** (2 points) You are familiar with the idea of normalising fractions by cancelling common factors. Implement a function `normalizeQ :: QQ -> QQ` that normalises fractions.

### Converting Numbers

Writing and reading larger successor numbers is tedious. In particular for testing the VM, it is convenient to have functions that convert between Haskell-numbers and VM-numbers. 

Implement by recursion

    nn_int :: Integer -> NN
    int_nn :: NN->Integer
    ii_int :: Integer -> II
    int_ii :: II -> Integer
    pp_int :: Integer -> PP
    int_pp :: PP->Integer
    float_qq :: QQ -> Float

### Normalisation by Evaluation

Instead of normalising as above by recursion on `NN` one can also normalise by evaluation, that is, by converting an `II` to a Haskell integer and then back to an `II`. Write a function

    nbv :: II -> II

that implements this strategy.

### Testing

The main function in [`arithmetic-specification.hs`](arithmetic-specification.hs) contains some test cases, but you should add your own tests.

### Further Hints and Remarks

- *Hint:* Spend some time on thinking about the logic behind each function. Once you have the idea, the solution will be short. Most of the functions are two-liners and some are one-liners.

- *Hint:* Mathematically, each line below represents the same number.

    | `NN` | `PP` | `Int`
    |:---:|:---:|:---:|
    | O | | 0
    | S O | I | 1
    | S (S O) | T I | 2
    | S (S (S O)) | T(T I) | 3
    | ... | ... | ...

    But in Haskell **these data types are disjoint**. For example, if you input an `I` or a `1` to a function that expects data of type `NN`, you will get an error message.

- *Hint:* Separate clearly in your mind syntax from semantics (=meaning=interpretation): Syntactically, `O` and `I` are just symbols. The meaning of these symbols only arises from the operations on these data. For example, if we write a function

        add O n = n

    this is consistent with our interpretation of `O` as $0$, because we know that $0+n=n$. On the other hand, if we simply transferred this idea from `NN` to `PP` writing

        addP I p = p 

    then this would *not* be consistent with `I` meaning $1$, because $1+p=p$ is not a valid  equation of arithmetic.

- *Hint:* The data type `PP` was introduced to make sure that a fraction never has a denominator of $0$. But there are other places where you may allow run-time errors, for example, the function `nn_int` is not defined for negative integers. Alternatively, you can proceed as in item 1 of [8 ways to report errors in Haskell](http://www.randomhacks.net/2007/03/10/haskell-8-ways-to-report-errors/).

## Part 2: A Calculator (?? points)

In the first part, we have seen how to define a virtual machine from scratch. The host language (Haskell) was only used to execute the equational reasoning specified by the recursive mathematical equations. In particular, we have a full understanding of how the VM works. Nothing depends on internals of Haskell.

In the second part, we will implement a simple calculator interpreting arithmetic on fractions in the VM.

### An interpreter for abstract syntax (2 points)

<font color=red>
Download the [template `numbers3.hs`](src/Haskell/numbers3.hs). It contains the definition of a language for arithmetic expressions and an interpreter evaluating these expressions into the Haskell integers:

    data Exp = Num Integer | Plus Exp Exp | Times Exp Exp 

    eval :: Exp -> Integer
    eval (Num n) = n
    eval (Plus n m) = (eval n) + (eval m)
    eval (Times n m) = (eval n) * (eval m)
</font>

**Bonus question:** (2 points) Extend the calculator so that it can do arithmetic on fractions.

## Part 3: A Calculator (?? points)

In the third part, we will allow ourselves to use the built-in arithmetic of Haskell. One of the reasons is that this built-in arithmetic uses binary numbers instead of successor numbers and, therefore, is much more efficient (but also much more difficult to implement). Another reason is that using the rich arithmetic of the host language makes it much easier to add features to the calculator.

<font color=red>
**Finding operations in Haskell:**
 
- In ghci you can run `:i Integer` to find information about the data type `Integer`. This leads you to [GHC.Integer](https://hackage.haskell.org/package/integer-gmp-1.0.3.0/docs/GHC-Integer.html) and shows that `Integer` is an instance of various [type classes](http://learnyouahaskell.com/types-and-typeclasses) such as `Num`, `Real`, and `Integral`. To sumarize, run in ghci

        :i Num
        :i Integral
        :i Real

    [*Warning:* That the label `Num` in `Exp` is the same string as the name of the type class `Num` is purely coincidental.]

- This gives `(+)` and `(-)` and `(*)` and some more but not exponentiation. I said that "Haskell has no secrets" when we implemented our own arithmetic on numbers. But if you start to using libraries that is not true anymore. So what can we do? 
    - One is to guess notation and run in ghci a command such as 

            :t (^)

        Then, if you want to see how functions such as `(^)` are implemented you can look them up in [Hoogle](https://hoogle.haskell.org/?hoogle=%5E&scope=set%3Astackage) and follow the links that will lead you to the source code. 
    - Another is to study more closely the documentation of [GHC.Real](https://www.haskell.org/haddock/libraries/GHC.Real.html) and [GHC.Num](https://hackage.haskell.org/package/base-4.14.0.0/docs/GHC-Num.html) and [Integral](https://hackage.haskell.org/package/base-4.14.0.0/docs/Prelude.html#t:Integral).

**Task 1**: Extend the definition of `Exp` and `eval` by 6 other operations on the integers including a binary `-`, a unary `-`, and `/` and `^` for integer division and exponentiation. Use the native Haskell operations on `Integer`.

**Remark**: It is interesting to think about adding Booleans, comparison operators and if-then-else.

### An interpreter for concrete syntax (2 points)

Check out [the lecture notes](https://hackmd.io/@alexhkurz/HJVtVl068#Generating-a-Parser-from-a-Context-Free-Grammar) for the relevant workflow.

Have a look at the [directory `Calculator3`](src/Calculator3). The file `Interpreter.hs` contains the function `eval`. The data type `Exp` will be generated automatically by `bnfc`  (see the lecture) from the grammar in `numbers.cf`:

    Plus. Exp ::= Exp "+" Exp1 ;
    Times. Exp1 ::= Exp1 "*" Exp2 ;
    Num. Exp2 ::= Integer ;

    coercions Exp 2 ;

Compiling `numbers.cf` with `bnfc` generates a number of files, in particular `AbsNumbers.hs`, which contains the definition of `Exp` (check for yourself).

**Task 2**: 
- Extend the grammar with syntax for the 5 operations from the previous task. 
- Compile the grammar with `bnfc`.
- Extend the interpreter as you have done in the previous task.
- Run and test the calculator.




