# Assignment 2 Feedback

In addition to individual feedback, here are some general remarks.

The two extra points for the fixed point combinator cannot get you above 30 (=100%). I apologise if that was not clear from my instructions.

## The Functions

- `prod []` should evaluate to `1`. (No points deducted if it works on all other inputs.) The reason is that the underlying data structure is what mathematicians and Haskeller's call a **monoid**, see here for the [math](https://en.wikipedia.org/wiki/Monoid) and here for [Haskell](https://wiki.haskell.org/Monoid). If `a` is a data type with a 'neutral element' `mempty :: a` and binary operation `mappend :: a -> a -> a`, then one can define an operation
    ```haskell  
    flatten :: [a] -> a
    flatten [] = mempty
    flatten (x:xs) = mappend x (flatten xs)
    ```
    Monoids are ubiquitous in math and software engineering. In the assignment, we have seen that both `sum` and `prod` fit into this pattern (mathematicians say that 0 is the neutral element of addition and 1 is the neutral element of multiplication):

    |`mempty` | `mappend`|`flatten`|
    |:---:|:---:|:---:|
    | `0`|`+`|`sum`
    |`1`|`*`|`prod`

    For more on this topic read [Haskell Monoids and their Uses](http://blog.sigfpe.com/2009/01/haskell-monoids-and-their-uses.html) for the basics and [Monoids and Finger Trees](https://apfelmus.nfshost.com/articles/monoid-fingertree.html) for a sophisticated application. 
    
    The beauty of [Monoids and Finger Trees](https://apfelmus.nfshost.com/articles/monoid-fingertree.html) is that a wide range of different trees can be implemented in a uniform way by working with different instances of the typeclass `Monoid`, for example:

    ```haskell
    instance Monoid Size where
    mempty  = 0
    mappend = (+)

    instance Monoid Priority where
    mempty  = maxBound
    mappend = min
    ```

## Critical Appraisal

- `sum x:2:3:4:#` results in `x+9`, while `sum 1:2:3:x:#` results in `1+(2+(3+(x+0)))`. **As opposed to what I wrote earlier here**, that has nothing to do with the grammar, but rather with the fact the recursion
    ```haskell
    sum list = if list=# then 0 else (hd list) + (sum (tl list))
    ```
    works left-to-right until it hits `#` and then sums up "on the way back". In the case of `sum x:2:3:4:#`, the recursion can add `4+0`, then `3+4`, then `2+7` before hitting the free variable `x`. In the case of  `sum 1:2:3:x:#` already `x+0` cannot be simplified and the interpreter returns the expression itself. What would happen in these cases, if we simplified the definition of the interpreter on `EPlus` to the following?
    ```haskell
    evalCBN (EPlus e1 e2) = case (evalCBN e1) of
        (EInt n) -> case (evalCBN e2) of
            (EInt m) -> EInt (n+m)
    ```

- `#:#` does not parse because in the grammar, we have 
    ```
    ENil.      Exp15 ::= "#" ; 
    ECons.     Exp15 ::= Exp16 ":" Exp15 ;
    ```
    (The first `#` in `#:#` must be at level 16 but an `Exp16` cannot produce a `#` (only an `Exp15` can).) One might think about changing this to `ECons.     Exp15 ::=    Exp15 ":" Exp15 ;` but then the grammar would not specify  anymore whether `a:b:c` would be parsed as `a:(b:c)` or `(a:b):c`. What happens if you try it? Does it work or not?  

- As opposed to Haskell, LambdaNat does not have
    - types,
    - pattern matching,
    - input/output,
    - error handling,
    - syntactic sugar for lists, 
    - predefined operations and libraries,
    - a REPL,
    - a compiler
    - ...

    On the positive side, the interpreter for LambdaNat5 has only 74 lines of code (this excludes the parser).

