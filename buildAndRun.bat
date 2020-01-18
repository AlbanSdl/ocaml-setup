@echo off
setlocal enableextensions
set TERM=
cd /d C:\OCaml64\bin
echo [34m^> Starting compilation[0m
set workspace=%1
set filename=%2
set workspace=%workspace:~1,-1%\
.\bash -l -i -c "ocamlc \"%workspace%%filename%\" -o \"%workspace%builds\%filename%.exe\""
cd "%workspace%builds\"
echo [32m^> Compilation has ended[0m
echo [34m^> Starting execution[0m
tests.exe
echo [32m^> Execution has ended[0m
