# Minimal Interesting Example (MIE)

Honing the craft of creating MIEs is important for debugging in general, but crucial for debugging interpreters and compilers.

An MIE consists of two programs and a specification. 

- The smaller program shows expected behaviour. 
- The larger program adds one feature to the smaller one and shows unexpected behaviour. 
- The specification describes the expected behaviour of the larger program.

"Minimal interesting" means that there is *nothing* you can delete from the programs while keeping them interesting. (Minimal = as small as possible without violating the properties of interest.)

If you think you have an MIE, more often than not, you will also have an idea of what to try next. Guess and verify may be a good approach to take at this moment.

If guess-and-verify does not solve the problem, it is worth spending more time on making the MIE even smaller. Once you have done this, execute the MIE pen-and-paper. Doing this carefully should give you information about how to fix the problem.

If you are still stuck at this point, send me your MIE and a link to your repo.
