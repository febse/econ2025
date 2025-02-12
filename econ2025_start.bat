set REPODIR=%USERPROFILE%\econ2025
cd %REPODIR%
git reset --hard HEAD
git pull origin master

start "" "%REPODIR%\econ2025.Rproj"
