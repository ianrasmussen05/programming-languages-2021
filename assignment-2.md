# Assignment 2

This assignment comes in several parts.

#### Deadlines: 

- Part 1: **Fri, Oct 22**.
- Part 2: **Wed, Oct 27**.
- Part 3: ...

When you submit Part 3, do not forget a critical appraisal covering the whole assignment (worth 3 points).

## Introduction

The purpose of the assignment is to build a simple functional programming language that has function definitions, function application, numbers, conditionals, recursion and lists. We start from lambda calculus, which already has function definitions and application.


## Instructions

You may form groups again. Easiest for me is if you keep working with the same group **in the same repo** as before (if that is not possible get in touch). Make folders as follows

    YourRepo
        Assignment1 -- contains your work on Assignment 1
        Assignment2
            README.md -- group members, your critical appraisal
            LambdaNat0 -- just a copy of my folder LambdaNat0
            LambdaNat1 -- your work as specified below for Part 1
            LambdaNat2 -- my solution to Part 1 (available from Oct 23)
            LambdaNat3 -- your solution to Part 2

Each group submits their answer by sending me a link to the github repository via [email using this link](mailto:akurz@chapman.edu?subject=Assignment%202%20Part%20X) where X is the number of the corresponding part of the assignment. 

## Part 1: From LambdaNat0 to LambdaNat1

(counts for 3 points ... this is only 4 lines of code ... two in `evalCBN` and two in `subst`)

Before you start, work through this [README](https://github.com/alexhkurz/programming-languages-2021/tree/main/Lab1-Lambda-Calculus). 

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

(Recall that we read `subst i e2 e3` as "substitute `i` by `e2` in `e3`".)


## Part 2

The purpose of this part is to add conditionals and recursion to Part 1, see the lecture notes for the necessary background. Your new version will be in a folder called `LambdaNat3`.

We start from the grammar (you have to make this part of your grammar `LambdaNat3.cf`.)

```
Prog.      Program ::= Exp ;  
EAbs.      Exp1 ::= "\\" Id "." Exp ;   
EIf.       Exp2 ::= "if" Exp "=" Exp "then" Exp "else" Exp ; 
ELet.      Exp2 ::= "let" Id "=" Exp "in" Exp ;               -- let x = A in B is sugar for (\x.B)A  
ERec.      Exp2 ::= "let rec" Id "=" Exp "in" Exp ;
EMinusOne. Exp2 ::= "minus_one" Exp ;                         -- because we do not have pattern matching in LambdaNat
EApp.      Exp3 ::= Exp3 Exp4 ;  
ENat0.     Exp4 ::= "0" ; 
ENatS.     Exp4 ::= "S" Exp4 ; 
EVar.      Exp5 ::= Id ;  
internal EFix. Exp2 ::= "fix" Exp ;                           -- to implement "let rec"
```

`internal` means that EFix is part of the abstract syntax but not of the concrete syntax. We need EFix to implement `let rec`.

**Task** (worth 3 points): Implement `EIf`, `ELet` and `EMinusOne` in the interpreter. (6 lines of code.) 

Hints: For `EIf` use Haskell's if-then-else. For `ELet` use the definition of the semantics of `let` as an application of lambda-calculus. For `EMinusOne` use pattern matching (if `n` matches `ENatS m` then `m` is one less than `n`.)

**Bonus Task** (worth 2 extra points): Implement `ERec` and `EFix`.
