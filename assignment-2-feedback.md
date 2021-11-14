# Assignment 2 Feedback

In addition to individual feedback, here are some general remarks.

## The Functions

- `prod []` should evaluate to `1`. (No points deducted if it works on all other inputs.) The reason is that the underlying data structure is what mathematicians and Haskeller's call a **monoid**, see here for the [math](https://en.wikipedia.org/wiki/Monoid) and here for [Haskell](https://wiki.haskell.org/Monoid). If `a` is a data type with a 'neutral element' `mempty :: a` and binary operation `mappend :: a -> a -> a`, then one can define an operation
    ```haskell  
    flatten :: [a] -> a
    flatten [] = mempty
    flatten (x:xs) = mappend x (flatten xs)
    ```
    Monoids are ubiquitous in math and software engineering. In the assignment, we have seen that both `sum` and `prod` fit into this pattern (if, indeed, we define `prod [] = 1`, taking into account that the neutral element of multiplication is 1.)

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

- `sum x:2:3:4:#` results in `x+2+3+4`, while `sum 1:2:3:x:#`
results in `6+x`. This is because in the grammar, we have 
    ```
    EPlus.     Exp10 ::= Exp10 "+" Exp11 ;
    ```
    If we wrote `EPlus.     Exp10 ::= Exp11 "+" Exp10 ;` we would obtain the opposite results (try it yourself!)

- `#:#` does not parse because in the grammar, we have 
    ```
    ENil.      Exp15 ::= "#" ; 
    ECons.     Exp15 ::= Exp16 ":" Exp15 ;
    ```
    (The first `#` in `#:#` must be at level 16 but an `Exp16` cannot produce a `#` (only an `Exp15` can).) One might think about changing this to `ECons.     Exp15 ::=    Exp15 ":" Exp15 ;` but then the grammar would not specify  anymore whether `a:b:c` would be parsed as `a:(b:c)` or `(a:b):c`. What happens if you try it? Does it work or not?  

- Differences between LambdaNat and Haskell
    - Types
    - Pattern matching
    - Input/Output
    - Error handling
    - Syntactic sugar: abbreviations for lists, etc
    - Predefined operations and libraries
    - Efficient compiler
    - ...


