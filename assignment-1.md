# Assignment 1 

The assignment comes in 2 parts and will be implemented in Haskell. We will use Haskell throughout this course and also next semester in Compiler Construction. 

***Prerequisites: Before you continue reading, do the homework in [Part 1, L 2.2 - L 3.2](lecture-by-lecture.md) of the lectures.***

(As a footnote, I want to add that Haskell is only a (very good) tool for us, one could use any other programming language for the same purpose in principle, even if it was tedious in practice. In fact, if you want to compare Haskell to another programming language you already know, this could be an idea for the report to implement this assignment also in, say, one of Java, Python, C++, etc and then to compare the two implementations.)

## Deadlines

**Deadline 1:** Tue, Sept 21.  
- Implement `addP` in Part 1.  
- Add subtraction to the calculator in Part 2.

**Deadline 2:** Sun, Oct 3 for the remainder of the assignment.


## Administrative Preliminaries

- Read carefully my general notes on [assignments](assignments.md).

- In your folder Assignment1 make subfolders `Part1` and `Part2`.

## Proper use of git will be taken into account for grading

- The only files in your repo should be the following.

        README.md -- names of group members
        Assignment1
            README.md -- critical appraisal
            Part1  
                arithmetic.hs
            Part2
                Calculator.hs
                Interpreter.hs
                numbers.cf

- Commit each time, with *meaningful messages*, after you implemented and *tested* 
  - a function in `airthmetic.hs`,
  - a case of `eval` in `Interpreter.hs`, 
  - a rule of `numbers.cf`; 

## Submission 

Submission is by sending me an [email](mailto:akurz@chapman.edu?subject=Assignment%201) with subject "Assignment 1" and a link to the repository. Do not forget the critical appraisal, see [assignments](assignments.md). 

## Part 1: A Virtual Machine (VM) for Arithmetic (15 points)

The aim of the first part is to practice programming by recursion over algebraic data types.

(The following description got quite long, but it is not as bad as it looks at first sight. The functions specified below can be implemented in 31 (or so) lines of code.)

### Summary of Instructions

- Study the [specification `arithmetic-specification.hs`](src/Assignment1/arithmetic-specification.hs). The aim is to implement all functions. 

    (Aside: The specification does not compile because it contains function declarations that are not implemented. Compilation (try it) will give you `"lacks an accompanying binding"` error messages. There is no need to put `arithmetic-specification.hs` in the repository.)
- Do not use functions converting between Haskell-numbers and VM-numbers to implement VM-arithmetic. Only use them for normalisation-by-evaluation (see below) and testing.
- Start from the template file [`arithmetic.hs`](src/Assignment1/arithmetic.hs). You should be able to compile and run it with `runhaskell arithmetic.hs`. Now add an implementation of `addP` plus the corresponding test cases in `main`. 

    (Aside: Use `ghc` if you want to compile only and `runhaskell` to compile *and* run.)


### Summary of Task

The overall idea is to explore how to extend our implementation of natural numbers 

```haskell
data NN = O | S NN
```

to integers and fractions. We will detail this in the following.

### Integers

The idea is that we can use pairs `(n,m)` of natural numbers to represent the integer `n-m`. In Haskell we define a type `II` (to remind us of "Integer") as an algebraic data type with two components of type `NN`:

```haskell
data II = II NN NN
```

The task now is to implement some familiar arithmetic operations directly on such pairs of numbers, in particular:

```haskell
addI :: II -> II -> II
multI :: II -> II -> II
subtrI :: II -> II -> II
negI :: II -> II
```

### Fractions

Simlarly, a fraction can be represented as a pair `(numerator,denominator)` where the numerator is an integer and the denominator is a positive integer. So we first define a data type of positive numbers (positive numbers start at 1, not 0)

```haskell
data PP = I | T PP
```

and then a type of fractions as an algebraic data type with two components, a numerator of type `II` and a denominator of type `PP`

```haskell
data QQ = QQ II PN
```

The following functions will be implemented by recursion on `PP`.

```haskell
addP :: PP -> PP -> PP
multP :: PP -> PP -> PP
ii_pp :: PP -> II
```

Since Haskell is strongly typed and does not have subtyping, a number of type `PP` is always different from a number of type `II`, so we need a function `ii_pp :: PP -> II` that does the *type-casting*.

Next, we use these functions to implement

```haskell
addQ :: QQ -> QQ -> QQ
multQ :: QQ -> QQ -> QQ
```

### Normalisation

You may have noticed that the same integer can be represented in different ways, for example `(S (S O), O)` and `(S( S (S O)), S O)` both represent 2. But `(S (S O), O)` is special in the sense that both components are as small as possible. Such special forms are often called normal forms and the process of converting data into normal form is called **normalisation**.

Using recursion, write a function

```haskell
normalizeI :: II -> II
```

that converts and number of type `II` into its normal form.

### Converting Numbers

Writing and reading larger successor numbers is tedious. In particular for testing the VM, it is convenient to have functions that convert between Haskell-numbers and VM-numbers. 

Implement by recursion

```haskell
nn_int :: Integer -> NN
int_nn :: NN->Integer
ii_int :: Integer -> II
int_ii :: II -> Integer
pp_int :: Integer -> PP
int_pp :: PP->Integer
float_qq :: QQ -> Float
```

### Normalisation by Evaluation

Instead of normalising as above by recursion on `NN` one can also normalise by evaluation, that is, by converting an `II` to a Haskell integer and then back to an `II`. Write a function

```haskell
nbv :: II -> II
```

that implements this strategy.

### Testing

The `main` function in [`arithmetic-specification.hs`](src/Assignment1/arithmetic-specification.hs) contains some test cases, but you should add your own tests.

### Further Hints and Remarks

- *Hint:* Spend some time on thinking about the logic behind each function. Once you have the idea, the solution will be short. Most of the functions are two-liners and some are one-liners.

    For example, the two Haskell equations

    ```haskell
    multN :: NN -> NN -> NN
    multN O m = O
    multN (S n) m = addN (multN n m) m
    ```
    correspond to the mathematical equations

    0 * n = 0  
    (1+n) * m = n*m + m

    I recommend that you engineer your function by reversing this process. Think first of the math and then about how to code it.

    How to encode positive numbers using `I` and `T` is discussed in the next hint.

- *Hint:* Mathematically, below, all entries on the same line  represent the same number.

    `Int` | `NN` | `PP` | `II` | `QQ`
    |:---|:---|:---|:---|:---|
    | -1  | | | `II O (S O)` | `QQ (II O (S O)) I`
    | 0 | `O` | | `II O O` | `QQ (II O O) I`
    | 1/2 | | |  | `QQ (II (S 0) O) (T I)`
    | 1| `S O` | `I` | `II (S O) O` |  `QQ (II (S 0) O) I`
    | 2 | `S (S O)` | `T I` | `II (S (S O)) O` | `QQ (II (S(S 0)) O) I`
    | 3 | `S (S (S O))` | `T(T I)` | `II (S (S (S O))) O` | `QQ (II (S(S(S 0))) O) I`

    But in Haskell **these data types are disjoint**. For example, if you input an `I` or a `1` to a function that expects data of type `NN`, you will get an error message.

- *Hint:* Data type definitions such as 
    ```haskell
    data NN = O | S NN
    data PP = I | T PP
    ```
    are pure syntax and do not mean anything on their own. Note that both `NN` and `PP` have exactly the same structure. I chose `O` and `S` to indicate their intended meaning (0 and Successor). Similarly, `I` and `T` should remind us of 1 and +1. But this is purely conventional.

- *Hint:* Separate clearly in your mind syntax from semantics (=meaning): Syntactically, `O` and `I` are just symbols. The meaning of these symbols only arises from the operations on these data. For example, if we write a function

    ```haskell
    addN O n = n
    ```

    this is consistent with our interpretation of `O` as 0, because we know that 0+n=n in mathematics. On the other hand, if we simply transferred this idea from `NN` to `PP` writing

    ```haskell
    addP I p = p 
    ```

    then this would *not* be consistent with `I` meaning 1, because 1+p=p is *not* a valid  equation of arithmetic.

- *Hint:* The data type `PP` was introduced to make sure that a fraction never has a denominator of 0. But there are other places where you may allow run-time errors, for example, the function `nn_int` is not defined for negative integers. Alternatively, you can proceed as in item 1 of [8 ways to report errors in Haskell](http://www.randomhacks.net/2007/03/10/haskell-8-ways-to-report-errors/).



## Part 2: Calculator (15 points)

In this part, we will allow ourselves to use the built-in arithmetic of Haskell. One of the reasons is that this built-in arithmetic uses binary numbers instead of successor numbers and, therefore, is much more efficient. Another reason is that using the rich arithmetic of the host language makes it much easier to add features to the calculator.

The aim is to extend [the calculator](src/Calculator) by new operations. 

**Finding airthmetic operations in Haskell:**
 
- In ghci you can run `:i Integer` to find information about the data type `Integer`. This leads you to [GHC.Integer](https://hackage.haskell.org/package/integer-gmp-1.0.3.0/docs/GHC-Integer.html) and shows that `Integer` is an instance of various [type classes](http://learnyouahaskell.com/types-and-typeclasses) such as `Num`, `Real`, and `Integral`. To sumarize, run in ghci

    ```bash
    :i Num
    :i Integral
    :i Real
    ```

    [*Warning:* That the userdefined label `Num` in the grammar `numbers.cf` is the same string as the predefined name of the type class `Num` is purely coincidental.]

- This gives `(+)` and `(-)` and `(*)` and some more but not exponentiation. (Aside: I said that "Haskell has no secrets" when we implemented our own arithmetic on successor numbers. But if we start using libraries that is not true anymore.) So what can we do? 
    - One is to guess notation and run in ghci a command such as 

            :t (^)

        Then, if you want to see how functions such as `(^)` are implemented you can look them up in [Hoogle](https://hoogle.haskell.org/?hoogle=%5E&scope=set%3Astackage) and follow the links that will lead you to the source code. 
    - Another is to study more closely the documentation of [GHC.Real](https://www.haskell.org/haddock/libraries/GHC.Real.html) and [GHC.Num](https://hackage.haskell.org/package/base-4.14.0.0/docs/GHC-Num.html) and [Integral](https://hackage.haskell.org/package/base-4.14.0.0/docs/Prelude.html#t:Integral).

**Task 0**: Think of 6 operations on the integers (other than addition and multiplication) including 

- a binary `-` (subtraction), 
- a unary `-` (negative),
- a binary `/` (integer division),
- a binary `^` (exponentiation). 

Research how these operations can be implemented using the existing Haskell operations on `Integer`.


**Task 1** (Parser): 
- Extend the grammar with syntax for the operations from the previous task. 
- Generate a parser with `bnfc`.
- Test the generated parser on a variety of input strings. Pay attention to how you implement the order of operations using precedence levels in the grammar (this may need some debugging).
- Make sure you describe with examples which parentheses you want to be able to drop in case of nested expressions. For example, 

        1+2*3 = 1+(2*3)
        2^3+4 = (2^3)+4
        2^3/4^5 = (2^3)/(4^5) 

    etc. Use these expressions to test your parser/calculator.


**Task 2** (Interpreter): Extend the definition of `eval` in [`Interpreter.hs`](src/Calculator/Interpreter.hs).

**Remark:** The parser and interpreter can be developed and tested independently, but it may be easier to develop them incrementally together. 

**Task 3**: 
- If the interpreter and the parser work separately, then they should also both work together. Compile `Calculator.hs` and test the calculator.




