@echo off

REM Get the user profile folder
set USERPROFILE=%USERPROFILE%
set REPO=econ2025
set USERREPO=%USERPROFILE%\%REPO%

REM Clone the GitHub repository into the user profile folder
git clone https://github.com/febse/econ2025.git %USERREPO%

REM Change directory to the cloned repository
cd %USERREPO%

REM Run the install script
call install.bat

REM Run the R script
Rscript your_script.R
