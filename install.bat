@echo off
echo.
echo ==================================
echo   Installing Claude Agents...
echo ==================================
echo.
mkdir "%USERPROFILE%\.claude\commands" 2>nul
copy "%~dp0*.md" "%USERPROFILE%\.claude\commands\"
echo.
echo Done! Use /test-cases in Claude Code.
echo.
pause
