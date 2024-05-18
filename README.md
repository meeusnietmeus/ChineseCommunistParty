# Chinese Communist Party
![alt text](1_i.png)
![alt text](2_love.png)
![alt text](3_communism.png)

## A.K.A CCP A.K.A Compile C Program
A shell script i use for compiling and running a C program.

### Why?
Don't wanna type out `gcc -o build/myfile.exe myfile.c`, `./build/myfile.exe` all the time.

### How
1. Copy paste the script into `.sh` file w/ name of your choosing
2. `chmod +x compile_and_run_c_program.sh`
3. Run the script `./compile_and_run_c_program.sh`
4. Realise you don't want to type that out all the time
5. <em>Optional:</em> move the script to a folder w/ all your custom scripts init: for me `~/bin`
6. Create alias for it in `.bash_aliases` or wherever you keep them: `alias ccp="~/bin/compile_and_run_c_program.sh"`