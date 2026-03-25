@echo off
mkdir "%USERPROFILE%\.claude\commands" 2>nul
copy "%~dp0*.md" "%USERPROFILE%\.claude\commands\"
echo Done! Use /test-cases in Claude Code.
