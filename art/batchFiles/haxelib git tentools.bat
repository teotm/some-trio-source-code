@echo off
color 0a
title GameJolt FNF Integration libraries
goto installit

:installit
haxelib remove tentools
haxelib git tentools https://github.com/TentaRJ/tentools.git
pause