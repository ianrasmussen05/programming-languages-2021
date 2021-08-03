# Setting the PATH and CLASSPATH variables

## Putting `bnfc` into the path

Either copy `bnfc` into a directory that is already in your path, or change `PATH` to contain `bnfc/source/dist/build/`. 

- To copy `bnfc` into a directory that is already in your path run `echo $PATH` to see which paths are known to the operating system. You are likely to find `/usr/local/bin`. Run 

    sudo cp source/dist/build/bnfc/bnfc /usr/local/bin`

- To change the path variable, run `cd` to get into your home-directory and check whether you have a file called `.bashrc` (or `.zshrc` since MACos 10), for example, by running `nano .bahsrc`. Then add the line (suitably replacing the string `YOUR_PATH_WHERE_bnfc_IS`)

        export PATH="~/YOUR_PATH_WHERE_bnfc_IS/bnfc/source/dist/build/bnfc:$PATH"
        
to `.bashrc`. Save and exit the editor. Run `source .bashrc`. Run `echo $PATH` and check that `~/YOUR_PATH_WHERE_bnfc_IS/bnfc/source/dist/build/bnfc` is in the path.

More on how to change `PATH` can be found [here](https://www.computerhope.com/issues/ch001647.htm) or in many other places. 

## General considerations

- How do you organize your file structure? You probably want to keep data (such as `Calc.cf`) separated from programs (such as `bnfc`) that you may want to execute on the data. (Why is it important to keep programs and data separated?)

- This entails the problem that if you want to execute `bnfc -m -haskell Calc.cf` you cannot be simultaneously in the directory that contains `bnfc` and `Calc.cf`.

- The solution is to put the executable `bnfc` "in your path". 

- Entering 

                echo $PATH
        
  in your terminal shows the value of the variable `PATH`, that is, all the directories at which the operating system automatically looks for executables (binaries). If you want that an executable is automatically found when you type its name in the terminal, you need to make sure that the directory which contains the executable is in the path.
  
- For this we want to change the file `.bashrc` which contains the information known to all terminals.

- If you change the `.bashrc` after you opened a terminal, this terminal will not know that `.bashrc` changed. You can either do a `source ~/.bashrc` in that terminal or simply close the terminal and open a new one.
  
## Opening a hidden file in a text editor in MacOS

`.bashrc` is a so-called hidden file. Its first character is a `.` which means that the file is usually not listed when you try to find it. Opening hidden files in MacOS is a bit of a pain. 

In a MacOS file dialogue in the "Finder" you can see hidden files such as `.bashrc` (if they exist) by simultaneously holding down the keys "command" and "shift" and "."

If you want to open `.bashrc` from the terminal, cd into your home directory and enter `open -a TextEdit .bashrc` or `open -a Sublime\ Text\ 2 .bashrc` or `open -a visual\ studio\ code .bashrc` to open the `.bashrc`.

If `.bashrc` does not exist create one.

