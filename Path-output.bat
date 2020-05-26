@echo off

setlocal
set p=%path%
:loop
FOR /F "tokens=1* delims=;" %%a IN ("%p%") DO (
    echo %%a
    set p=%%b
)
if defined p goto :loop
endlocal
