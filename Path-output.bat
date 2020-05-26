@echo off

setlocal

rem Get the contents of the environment variable "path".
set p=%path%

rem Outputs environment variables separated by a semicolon, line by line.
:loop
FOR /F "tokens=1* delims=;" %%a IN ("%p%") DO (
    echo %%a
    set p=%%b
)
if defined p goto :loop

endlocal
