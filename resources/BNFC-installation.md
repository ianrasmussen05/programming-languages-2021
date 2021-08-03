# BNFC installation

The [BNFC homepage](http://bnfc.digitalgrammars.com/) is the first place to go, but installation instructions in the [BNFC tutorial](http://bnfc.digitalgrammars.com/tutorial/bnfc-tutorial.html) may need a bit of work. I will add information here as we go along and learn more about the best way to get this done. Let me know about anything that may be useful to add. 

## Working under Windows

I don't use Windows, so I am dependent on your feedback to put more information here ...

Install Linux from the Windows store and continue to follow the instructions for Linux/MacOS in the next section ... this maybe preferable as it puts us all on the same page ... specifically there is the Windows Subsystem for Linux (WSL). Any Windows 10 user can install WSL on their pc. 

This video may help to install the [Haskell Platform in WSL](https://www.youtube.com/watch?v=aC3-Ur-mNM0). The short version is:

    sudo apt update
    sudo apt upgrade
    sudo apt install haskell-platform
    sudo apt install haskell-stack

Once you have Linux running you can try the executable from [BNFC homepage](http://bnfc.digitalgrammars.com/). If that doesn't work make your own:

    git clone https://github.com/BNFC/bnfc
    cd bnfc  
    make

If you don't have `make` try `sudo apt install make`.

You should now be able to [continue here](https://hackmd.io/@alexhkurz/HJVtVl068#Generating-a-Parser-from-a-Context-Free-Grammar).

<!--
## Working with Docker

Jonathan Burns produced a setup that may simplify installation for some, using Docker, see [here](https://github.com/alexhkurz/programming-languages-2019/blob/master/LambdaNat-with-Docker/README.md) for details.

Scott Weller wrote up a [VM tutorial]( https://docs.google.com/document/d/17nty9Se19jSxUnQc2G2I635hvn12izD9a77ujF4yamk/edit?usp=sharing) of how to install a Linux VM on Windows to work with Docker.
-->

## Working under Linux/MacOS

Installing BNFC under Linux/MacOS requires installing the programming language [Haskell](https://www.haskell.org/) first. You also need the package management system [Cabal](https://www.haskell.org/cabal/), but it is already part of the Haskell platform. So the first step should be:

Download and install the [Haskell platform](https://www.haskell.org/platform/). 

<!--
Create a directory in which you want to clone the BNFC github directory and `cd` there in a terminal. Then perform the following commands (you may have to add a `cabal update` before the `make`).

    git clone https://github.com/BNFC/bnfc
    cd bnfc  
    make
-->

Run in a terminal

    brew install bnfc

After that take a grammar such as `numbers.cf` and run in a terminal

    bnfc -m --haskell numbers.cf
    make

- If make doesn't find `alex` or `happy`:

        curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
        cabal install alex 
        cabal install happy 

    and follow possible suggestions such as to source `env` in `.ghcup` with `source ~/.ghcup/env`.

<!--
After calling `make` I get a long list of output finishing with

           Configuring BNFC-2.8.3...
           cabal: Encountered missing dependencies:
           doctest >=0.8, hspec -any, temporary -any

           make: *** [internal-tests] Error 1
        
As far as I understand the missing dependencies and the error can be ignored as long as the executable `bnfc` was generated. 

Use your file browser to find where the exectuable `bnfc` is. I found it as `bnfc/source/dist/build/bnfc` (the first occurrence of `bnfc` refers to the directory cloned from github, the second occurrence refers to the executable).

Now we need to make sure that the operating system finds bnfc when typing `bnfc` in the terminal. For example, if you enter `bnfc --version` you may get a `command not found` message. We need to make sure that `bnfc` will be "in the path". I collected some information on [setting the PATH variable](PATH.md). 
-->
 
Now, on entering `bnfc --version` you should see `2.8.3`. (Or some larger number if you if you have a more recent version.)

## Testing BNFC

You should now be able to [continue here](https://hackmd.io/@alexhkurz/HJVtVl068#Generating-a-Parser-from-a-Context-Free-Grammar).