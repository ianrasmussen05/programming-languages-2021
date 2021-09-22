# README

This folder contains an interpreter for the lambda calculus as given by the grammar

    EAbs.   Exp ::= "\\" Id "." Exp ;  
    EApp.   Exp ::= Exp Exp1 ; 
    EVar.   Exp1 ::= Id ;

    coercions Exp 1 ;
    
To parse and run a program in the language LambdaNat:

- (I assume you have Haskell and bnfc)

- Copy this directory `LambdaNat0` to your local machine.

- `cd` into `LambdaNat0`.

- Use `bnfc` to generate a parser.

- `cp grammar/*.hs src`

- Build an interpreter with 
    ```
    stack build 
    ````

- Assuming that `mypgrogram.lc` is in the folder `test`, run 
    ```
    stack exec LambdaNat-exe test/myprogram.lc
    ```

EApp 
    (EApp 
        (EApp 
            (EAbs 
                (Id "x") 
                (EAbs 
                    (Id "y") 
                    (EApp 
                        (EApp 
                            (EVar (Id "x")) 
                            (EVar (Id "y"))) 
                        (EVar (Id "z"))))) 
            (EVar (Id "a"))) 
        (EVar (Id "b"))) 
    (EVar (Id "c"))
