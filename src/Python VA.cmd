@call "%~dp0\activate-pythonva-environment.cmd"
@call "%python_home%\scripts\ipython.exe" %*
@exit /b %errorlevel%