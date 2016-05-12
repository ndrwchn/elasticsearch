# River-web does not support windows

## Objects

> Convert SH to bat

The most trick part is for loop to get java classpath.

1. in batch file, set up delay enable: Setlocal EnableDelayedExpansion
2. set under for loop, the value will be reset each loop. It should use !var! instead of %var%

example:
> FOR /R %LIB_DIR% %%x in (*.jar) do (SET "CP_PATH=!CP_PATH!;%%x")

Two files uploaded one as 'riverweb' sh file, and 'riverweb.bat' for windows.
    
    
     