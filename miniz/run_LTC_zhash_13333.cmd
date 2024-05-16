@echo off
SetLocal EnableDelayedExpansion

set "scriptPath=%~dp0"
if "%scriptPath:~-1%" == "\" set "scriptPath=%scriptPath:~0,-1%"
for %%i in ("%scriptPath%") do (set "scriptDir=%%~ni")

%scriptDir%\bin\miniZ --par 144,5 --pers BgoldPoW --url LTC:ltc1qshmk2u694y60dg4guvn4saxkpkc9jzxq2dwu59.rog_zhash_%scriptDir%#0yr0-ywoq@zhash-eu.unmineable.com:13333 --extra
