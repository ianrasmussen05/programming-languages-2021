# Assignment 3 Feedback

- The distinction between stack and heap is important for both imperative and functional programming. The fact that LambdaFun has an immutable stack is particular. We will see next semester in Compiler Construction that the stack for a language like C++ is mutable.

- We want the stack to be immutable to keep the clean semantics of a pure functional programming language "outside of the heap".

- The two functions

    ```
    val next1 = \a. case !a of { [e,x] -> x };;
    val next2 = \a. case !a of { [e,a] -> a };;
    ```

    are equivalent even though, in the second case the `a` in `[e,a]` seems to refer to the formal paramater `a`. In fact, what happens is that the block `{...}` allocates a fresh local variable `a` that 'shadows' the formal parameter `a` of `next2`.

    <!--
    Let us take a closer look at the `case`-case of the [evaluation function of the interpreter](https://github.com/alexhkurz/programming-languages-2021/blob/84beb0208a9d7e59414a080abb96213ff4959f09/Lab2-Lambda-Calculus/LambdaFun/src/LamMemInterpreter.hs#L100) that reads
    ```haskell
    eval (Case_ e cs) env = eval e env $> (\e' -> unify cs e' env)
    ```
    Here ... 
    -->

- LambdaFun does not have a mechanism for deallocating memory. In fact, that should not be too difficult to implement.

- As opposed to LambdaFun, Haskell does not have references. So what does `!` mean in the following Haskell definition? 
    ```haskell
    data Example = Exle Int !Int !(Maybe Int)
    ```
    ([Stackexchange](https://stackoverflow.com/a/993326/4600290) has an answer.)


