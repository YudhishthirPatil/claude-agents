@echo off
echo.
echo ==================================
echo   Installing Claude Agents...
echo ==================================
echo.
mkdir "%USERPROFILE%\.claude\commands" 2>nul
del "%USERPROFILE%\.claude\commands\test-cases.md" 2>nul
copy "%~dp0*.md" "%USERPROFILE%\.claude\commands\"
echo.
echo Done! Available commands:
echo   /test-cases-backend   (Backend tests)
echo   /test-cases-frontend  (Frontend tests)
echo.
pause
