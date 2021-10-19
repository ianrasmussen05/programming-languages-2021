
## From `LambbdaNat0` to `LambdaNat1`

This section assumes that we can run the parser and interpreter for LambdaNat0.

Learning outcome of this section is a basic understanding of how to add a feature to a programming language.

The running example is adding numbers to LambdaNat0. Our first milestone is the `plus_one` function. We will achieve this in two steps. The first step, LambdaNat1, is already in the repository. The second step, LambdaNat2, you should try as homework.

Before going to write some code, we need a specification. 

**Activity:** How can we write `plus_one` as a lambda expression? Can we do this in such a way that we use the [computation rule](https://hackmd.io/@m5rnD-8SSPuuSHTKgXvMjg/SyDa-43BB#Beta-reduction) of lambda calculus in order to compute plus one? 

<!--
**Outcome:** `\ x . S x`

**Example:** According to the computation rule of lambda calculus, if we apply the function `\ x . S x` to, say, `S 0`, we obtain `S S 0`.
-->

Let us look at what we have in the folder `LambdaNat1`. 

Referring to the Work Cycle above, steps 1-4 have been performed already. Nevertheless, to do step 5, you mave have to run `make` in the folder `grammar` in order to produce a parser that is actually executable on your machine.

Now you should be able to run, for example, 

    echo "(\x.x) S 0" | ./TestLambdaNat

**Exercise:** Do Step 5 of the Work Cycle.

Steps 6-8 have already been performed again. 

Nevertheless, you will have to perform Step 8 yourself, so that the interpreter is executable on your machine. 

We can now test the interpreter, for example by running

    echo "(\x.x) S 0" | stack exec LambdaNat-exe

**Exercise:** Do Step 9 of the Work Cycle.

**Activity:** Why does the following not work?

    echo "(\x.S x) S 0" | stack exec LambdaNat-exe

    Parse Failed...


What breaks? Why? How can we fix it?

Let us go through this step by step

- What breaks? Judging from the output the parsing.

- Why? For this we need to go to the grammar `LambdaNat1.cf`. There we find the line

        NatS.   Nat ::= "S" Nat ;
    
  which says that an `S` must be followed by a number, and not a variable or a more general expression. 

- How can we fix it? 
<!-- 
We need to change the grammar so that `S` can be followed by a variable, or, any expression. There are different possibilities here.

  - We can use the grammar
  
        e ::= \ x. e | e e | x | 0 | S e

    where now `S` can be followed by any expression. This is the grammar available in [`LambdaNat2`](https://github.com/alexhkurz/programming-languages-2019/blob/master/Lab1-Lambda-Calculus/LambdaNat2/grammar/LambdaNat2.cf).

  - We can use the grammar

        e ::= \ x . e | e e | x | 0 | S

    where `S` is now a new constant and `S 0` is parsed as an application.

  - Maybe even more ... give it a try ...
-->

## Homework: From LambdaNat1 to LambdaNat2

Try to pick up from the last observation. Work yourself through the Work Cycle to produce a new version `LambdaNat2` and see whether you can get the following output

    echo "(\x.S x) S 0" | stack exec LambdaNat-exe

    Output:
    S S 0

