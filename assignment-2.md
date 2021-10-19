# Assignment 2

This assignment comes in several parts.

#### Deadlines: 

- Part 1: **Fri, Oct 22**.
- Part 2: ...
- Part 3: ...

## Introduction

The purpose of the assignment is to build a simple functional programming language that has function definitions, function application, numbers, conditionals, recursion and lists. We start from lambda calculus, which already has function definitions and application.


## Instructions

You may form groups again. Easiest for me is if you keep working with the same group in the same repo as before (if that is not possible get in touch). Make folders as follows

    YourRepo
        Assignment1 -- contains your work on Assignment 1
        Assignment2
            LambdaNat0 -- just a copy of my folder LambdaNat0
            LambdaNat1 -- your work as specified below

Each group submits their answer by sending me a link to the github repository via [email using this link](mailto:akurz@chapman.edu?subject=Assignment%202%20Part%20X) where X is the number of the corresponding part of the assignment. 

## Part 1: From LambdaNat0 to LambdaNat1

(counts for 3 points ... this is only 4 lines of code ... two in `evalCBN` and two in `subst`)

Before you start work through this [README](https://github.com/alexhkurz/programming-languages-2021/tree/main/Lab1-Lambda-Calculus). 

Create `LambdaNat1` from `LambdaNat0` according to the work cycle. 

The task is to add natural numbers (in successor style) to `LambdaNat1`. That is, we need cases for zero and successor in the grammar and in the interpreter.

The relevant modifications that the grammar `LambdaNat1.cf` will make to `LambdaNat0.cf` are the following.  You can also design your own grammar, but this is what I used:

```
Prog.   Program ::= Exp ; 
EAbs.   Exp1 ::= "\\" Id "." Exp ;  
EApp.   Exp2 ::= Exp2 Exp3 ; 
ENat0.  Exp3 ::= "0" ;
ENatS.  Exp3 ::= "S" Exp3 ; 
EVar.   Exp4 ::= Id ; 

coercions Exp 4 ;
```

Test the grammar in the usual way by parsing some lambda expressions such as `(\ x . S x) S 0`.

Next we look at the interpreter.

Do the computation `(\ x . S x) S 0 = S S 0` pen and paper. **Think about what you need to add to `evalCBN` and `subst` to make this computation work.** 

- Add two cases for `ENatS` and `ENat0` to `evalCBN`. 
- Add two cases for `ENatS` and `ENat0` to `subst`. 

These 4 lines of code are simpler than you may think. They are just pushing symbols around. But remember that they need to use abstract syntax (`ENatS` and `ENat0` instead of `S` and `0`). So I think it should help to first write out the 4 clauses in an informal way, possibly using concrete syntax, before translating them into the correct Haskell code. For example, the case for how `subst` should handle successor could be written in pseudo code as
```haskell
subst i e2 (S e3) = S (subst i e2 e3)
```
the idea being that to substitute in `S e3` I need to substitute in `e3` and keep the `S` around.

(Recall that we read `subst i e2 e3` as "substitute i with e2 in e3".)



