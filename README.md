# Hooky script to move .aux .log etc files from pdflatex
*Aka "move bitch, get out the way."*  
This bash script takes 1 shell argument, a `.tex` file. It's not strong enough to handle multiple `.tex` files.

## Use the script as an executable .sh
`chmod +x ludacris.sh`  
`./ludacris.sh myfile.tex`  

## Use the script from $PATH
Drop the script in a nice spot, such as `/usr/local/bin`, and make sure it's executable with `chmod +x ludacris.sh`.  
If that nice spot isn't in your $PATH (you can check with `echo $PATH`), run `echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc` (or however else you like to add files to your `.bashrc`) and `source .bashrc`.
Running `ludacris.sh myfile.tex` should now worky.  

### and I symlink `pdflatex` because I'm lazy
Add to `~/.bash_aliases` or wherever you keep your aliases: `alias pdflatex="/usr/local/bin/ludacris.sh"`  
Now I can just `pdflatex myfile.tex`.
