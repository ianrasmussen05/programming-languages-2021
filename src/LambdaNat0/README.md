# README

This folder contains an interpreter for the lambda calculus as given by the grammar


----------------------------------------------
----------------------------------------------
-- parse the following expressions by running 
--   ./TestLambdaNat test.lc 
-- in the terminal in the directory where you have TestLambdaNat
-- and where test.lc contains any one of the expressions below.
--
-- Verify that the following statements are correct:
--
-- ((x y) z) equals x y z
-- \x.x x x equals \x. ((x x) x) -- whitespace can usually be ignored but not between the x (why?)
-- (\x.x) x x equals (((\x.x) x) x) 
--
-- Btw, I say that two strings are equal if they produce the same parse tree (abstract syntax tree)
----------------------------------------------
----------------------------------------------


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


