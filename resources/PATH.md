# Setting the PATH and CLASSPATH variables

## Putting `bnfc` into the path

Either copy `bnfc` into a directory that is already in your path, or change `PATH` to contain `bnfc/source/dist/build/`. 

- To copy `bnfc` into a directory that is already in your path run `echo $PATH` to see which paths are known to the operating system. You are likely to find `/usr/local/bin`. Run 

    sudo cp source/dist/build/bnfc/bnfc /usr/local/bin`

- To change the path variable, run `cd` to get into your home-directory and check whether you have a file called `.bashrc`, for example, by running `nano .bahsrc`. Then add the line (suitably replacing the string `YOUR_PATH_WHERE_bnfc_IS`)

        export PATH="~/YOUR_PATH_WHERE_bnfc_IS/bnfc/source/dist/build/bnfc:$PATH"
        
to `.bash_profile`. Save and exit the editor. Run `source .bashrc`. Run `echo $PATH` and check that `~/YOUR_PATH_WHERE_bnfc_IS/bnfc/source/dist/build/bnfc` is in the path.

More on how to change `PATH` can be found [here](https://www.computerhope.com/issues/ch001647.htm) or in many other places. 

## General considerations

- How do you organise your file structure? You probably want to keep data (such as `Calc.cf`) separeted from programs (such as `bnfc`) that you may want to execute on the data. (Why is it important to keep programs and data separated?)

- This entails the problem that if you want to execute `bnfc -m -haskell Calc.cf` you cannot be simultaneously in the directory that contains `bnfc` and `Calc.cf`.

- The solution is to put the executable `bnfc` "in your path". 

- Entering 

                echo $PATH
        
  in your terminal shows the value of the variable `PATH`, that is, all the directories at which the operating system automatically looks for executables (binaries). If you want that an exectuable is automatically found when you type its name in the terminal, you need to make sure that the directory which contains the exectuable is in the path.
  
- For this we want to change the file `.bash_profile` which contains the information known to all terminals.

- Adding such information to the `.bash_profile` is important so that all future terminals/shells know about `PATH` (and later also `CLASSPATH`).  

- If you change the `.bash_profile` after you opened a terminal, this terminal will not know that `.bash_profile` changed. You can either do a `source ~/.bash_profile` in that terminal or simply close the terminal and open a new one.
  
## Opening a hidden file in a text editor in MacOS

`.bash_profile` is a so-called hidden file. Its first character is a `.` which means that the file is usually not listed when you try to find it. Opening hidden files in MacOS is a bit of a pain. 

In a MacOS file dialogue in the "Finder" you can see hidden files such as `.bash_profile` (if they exist) by simultaneously holding down the keys "command" and "shift" and "."

If you want to open `.bash_profile` from the terminal, cd into your home directory and enter `open -a TextEdit .bash_profile` or `open -a Sublime\ Text\ 2 .bash_profile` or `open -a visual\ studio\ code TestCalc.hs` to open the `.bash_profile` (thanks to Dylan Davis).

If `.bash_profile` does not exist create one.

