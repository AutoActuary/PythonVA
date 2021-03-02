@echo off
set functions="%~dp0functions.bat"


:: Set convenient variables
call %functions% FULL-PATH pythonva_home "%~dp0.."
call %functions% FULL-PATH python_home "%~dp0..\bin\python"
call %functions% FULL-PATH python_scripts "%~dp0..\bin\python\scripts"


:: Return early if Windows Path environment is already set
call %functions% TEST-PYTHONVA-PATHS testflag
if "%testflag%" equ "1" (
    goto :EOF
)


:: Add all paths to Windows environment
call %functions% ADD-TO-PATH "%python_home%"
call %functions% ADD-TO-PATH "%python_scripts%"