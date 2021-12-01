# The Memory Model

We will look at the memory model. The memory is divided in an immutable stack [^immutable-stack] and a mutable heap. To see the difference, run

    λ val a = new [] ;;

which creates a new name `a` on the stack and a new memory cell (or address) on the heap. To see this run

    λ :env

upon which we get to see a full list of the stack (called `Env` below for environment) and the heap (called `Memory` below). I only show part of the overall output.

    Env:
    a -> <address 0>
    Memory:
    0 -> un-initialized
    
This tells us that `a` is a name for `address 0` and that the memory at address `0` has not been initialised. 

**Remark:** The 'environment' and the 'memory' here are the "virtual" ones of LambdaFun (implemented in Haskell) and so are quite far removed from the actual memory of your computer. So keep in mind that we work here with a memory *model*. While this memory model is inspired by familiar imperative programming languages (C, Java, Pyton, etc), it has some notable differences, as we will explore now. 

Our first experiment gives a familiar result.

    λ a:=3;;
    λ :env
    Env:
    a -> <address 0>
    Memory:
    0 -> 3

This tells us that, after the assignment, address `a` (which is `0`) has content `3`. 

**Remark:** We use different language to say `a -> <address 0>` ("`a` is address `0`") and to say `0 -> 3` ("address `0` has content `3`"). This reflects an importance difference in the meaning of the two arrows`->`.  The first one, `a -> <address 0>` is immutable, while the second one, `0 -> 3`, can be changed via assignment. 

For example, we can change the content of address `a` as follows.

    λ a:=4;;

To verify that this has the expected result we inspect stack and heap:

    λ :env
    Env:
    a -> <address 0>
    Memory:
    0 -> 4

We see that `a -> <address 0>` did not change ("`a` is still address `0`")  while `0 -> 3` became `0 -> 4` ("the content of `a` changed from `3` to `4`").

So far, we have seen the familiar behaviour of a variable `a` updated by assignment. The first indication that something is different comes from the following.

    λ a;;
    <address 0>
 
As an answer to the question `λ a;;` ("What is `a`?") we do not get `3`. We get `<address 0>` ("`a` is address `0`"). To obtain the value of `a` we need to ask the question `λ !a;;` ("What is the content of `a`?"):

    λ !a;;
    3

Differently to more familiar programming languages, we decided to make the distinction between "the address of a variable" and "the content of a variable" explicit. 

The next experiment highlights the difference between a name that is an integer (or some other value) and a name that is an address. Let us create a name `b` that represents the value `5`:

    λ val b = 5;;     
    λ :env
    a -> <address 0>
    b -> 5
    0 -> 3

**Exercise:** Explain what happens after

    λ b:=a;;

On the other hand, the following works as expected:

    λ a:=b;;
    λ :env
    a -> <address 0>
    b -> 5
    0 -> 5

Now `a`, which is address `0`, has content `5`.

To summarize what we have so far, we read `a:=b` as "change the content of `a` to `b`".

What may be unexpected is the following.

    λ val c = new [];;     
    λ c:= 7;;
    λ a:= c;;

Pause for a moment and ponder that there are two ways to answer the question `λ :env` now.  

    a -> <address 0>
    0 -> ???

Do we want to replace `???` by the content of `c`, which is `7`, or by the address of `c`, which is `1`?

In fact, the console will choose the second answer: 

    a -> <address 0>
    c -> <address 1>
    0 -> <address 1>
    1 -> 7

To summarize, after `c:=7;a:=c` we have that `a` (which is address `0`) contains the address of `c`, which contains `7`.

What do we have to do, if we want `a` to contain the content of `c`? 

Recall that we can write `!c` to express "the content of `c`". And, indeed, 

    λ a:= !c;;

gives us

    a -> <address 0>
    c -> <address 1>
    0 -> 7
    1 -> 7


**Remark:** The names `a` and `c` are on the stack. Their values did not change through the examples. The stack is immutable. On the other hand, the addresses themselves are on the heap and their contents were changed using assignment `:=`.

**Remark:** If `a` is an address, we agreed to read `!a` as "the content of `a`", and `a` itself as "the address of `a`". In the examples of linked lists, we will see that we can also think of `!` as dereferencing a pointer, or following an indirection. 

**Summary:** We encountered three new functions, which we can think of as having types as indicated:

    new :: () -> addr
    (:=) :: addr -> value -> ()
    ! :: addr -> value

`new` allocates a new address on the heap. `:=` is an infix operator that takes an address and a value and changes the memory by assigning the value to the address. `!` takes an address and returns its value.

**Exercise:** Run through the following, at each step predicting the result and then inspecting the environment.

    λ a := [1,"NULL"];;
    λ val b = new [];;
    λ b := [2,a];;
    λ a := [3,b];;
    
Explain, by inspecting the environment, in which sense the above defines a cyclic list.

**Exercise:** Continuing from the exercise above,

    λ val ptr = new [];;
    λ ptr := !a;;

this code creates a pointer `ptr` that points to the same data as `a`. Verify that 

    λ ptr := !(head(tail !a));; 
    
moves the pointer `ptr` one element along the cyclic list, from `!a` to `!b`. 

[^immutable-stack]: The stack is mutable at the top level. This can be seen by 

        λ val i = 0;;
        λ i;;
        λ val i = i+1;;
        λ i;;

    but this does not work insdide a function.