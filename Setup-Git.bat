@echo off
echo Setting up Git repository for Unity project...

:: Create .gitignore file
echo # Unity generated folders and files > .gitignore
echo /[Ll]ibrary/ >> .gitignore
echo /[Tt]emp/ >> .gitignore
echo /[Ll]ogs/ >> .gitignore
echo /[Uu]serSettings/ >> .gitignore
echo /[Oo]bj/ >> .gitignore
echo /[Bb]uild/ >> .gitignore
echo /[Bb]uilds/ >> .gitignore
echo. >> .gitignore
echo # Visual Studio / VS Code files >> .gitignore
echo *.csproj >> .gitignore
echo *.unityproj >> .gitignore
echo *.sln >> .gitignore
echo *.suo >> .gitignore
echo *.tmp >> .gitignore
echo *.user >> .gitignore
echo *.userprefs >> .gitignore
echo *.pidb >> .gitignore
echo *.booproj >> .gitignore
echo *.vsconfig >> .gitignore
echo. >> .gitignore
echo # Unity3D generated meta files >> .gitignore
echo *.pidb.meta >> .gitignore
echo. >> .gitignore
echo # Unity3D Generated File On Crash Reports >> .gitignore
echo sysinfo.txt >> .gitignore
echo. >> .gitignore
echo # Builds >> .gitignore
echo *.apk >> .gitignore
echo *.aab >> .gitignore
echo *.unitypackage >> .gitignore
echo *.app >> .gitignore

:: Initialize git repository
git init

:: Create README.md
echo # Cannon-Shooting > README.md
echo. >> README.md
echo Unity Version: [Your Unity Version] >> README.md
echo. >> README.md
echo ## Description >> README.md
echo A cannon shooting game made with Unity. >> README.md

:: Remove cached files
git rm -r --cached .

:: Add all files respecting .gitignore
git add .

:: Initial commit
git commit -m "Initial commit"

:: Create main branch
git branch -M main

:: Prompt for GitHub repository URL
set /p repo_url="Enter your GitHub repository URL (e.g., https://github.com/username/repo.git): "

:: Add remote origin
git remote add origin %repo_url%

:: Push to GitHub
git push -u origin main

echo.
echo Repository setup complete!
echo Don't forget to update the Unity version in README.md
pause
