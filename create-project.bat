@echo off

title Automatic Project Initializer
echo Initializing Projects Using Just a command

set argCount=0
for %%x in (%*) do (
   set /A argCount+=1
)

echo %argCount%

if %argCount% EQU 0 (
  echo atleast 1 argument expected.
  echo try create-project help for more info.	
) else (
  if %1% EQU help (
	echo create-project [Project Name].
  ) else (
	cd G:\%2
	mkdir %1
	cd %1
        start .	 
	code .
	start cmd /k "cd /d G:\%2\%1"
	cd G:\python\AutomaticProjectInitializer	
        python program.py %1
	cd G:\%2\%1
	echo # %1 >> README.md
	git init
	git add README.md
	git commit -m "initial commit"
	git remote add origin https://github.com/mihir1012/%1.git
	git push -u origin master 
  ) 
) 
pause