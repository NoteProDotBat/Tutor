:: [
:: Duplicate file names with different contents. if EXIST file (the file exists but the contents inside are not what are needed for that version to work.
@echo off

[?25l

chcp 65001> nul

setlocal ENABLEDELAYEDEXPANSION> nul
setlocal ENABLEEXTENSIONS> nul

mode 60,39> nul

title Tutor v0.2.0 BETA
echo Downloading needed files...
:Connection
echo Testing Connection...
timeout /t 2 /NOBREAK > nul
ping www.google.com -n 1 -w 1000 > nul
if %errorlevel%==1 (
	cls
	echo No internet connection!
	echo Press "1" to retry
	echo Press "2" to continue
	echo Press "3" to exit
	choice /c 123 /n /d 1 /t 15
)
if %errorlevel%==1 goto :Connection
if %errorlevel%==3 exit
if NOT EXIST "C:\Study" md C:Study
if NOT EXIST "C:\Study\Files" md C:Study\Files
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::CHANGE GOTO
if NOT EXIST "C:\Study\Files\Batbox.exe" (
	if %errorlevel%==1 (
		echo Unable to finish downloads. Please try again later.
		timeout /t 3 /NOBREAK > nul
		goto :Connection
	)
	curl -s -o "C:\Study\Files\Batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
)
if NOT EXIST "C:\Study\Files\Lists" md C:\Study\Files\Lists
if NOT EXIST "C:\Study\Files\Lists\Lists.txt" (
tutorial
)>"C:\Study\Files\Lists\Lists.txt"
if NOT EXIST "C:\Study\Files\Lists\tutorial.bat" (
	(
		echo set q1=How do you create a set?
		echo set a1=Press the button
		echo set q2=How many questions are required to make a set?
		echo set a2=Going to be a minimum of 4 on release date.
		echo set q3=Is batch awsome?
		echo set a3=Yes!!!
		echo set q4=Is earth a star?
		echo set a4=No
	)>C:\Study\Files\Lists\tutorial.bat
	echo Welcome to the Study Tool!
	timeout /t 2 /NOBREAK > nul
)
cls
::%%~nxG
:Home
::[0;0H
echo [0;0H                                                            
echo [2;0H      ████████  ██    ██  ████████    ████    ██████       
echo       ████████  ██    ██  ████████  ████████  ██████        
echo       ▓▓▓██▓▓▓  ██    ██  ▓▓▓██▓▓▓  ██▓▓▓▓██  ██▓▓▓▓██      
echo          ██     ██    ██     ██     ██    ██  ██    ██      
echo          ██     ██    ██     ██     ██    ██  ██████▓▓      
echo          ██     ██    ██     ██     ██    ██  ██████        
echo          ██     ██    ██     ██     ██    ██  ██▓▓▓▓██      
echo          ██     ██    ██     ██     ██    ██  ██    ██      
echo          ██     ██    ██     ██     ████████  ██    ██      
echo          ██     ▓▓████▓▓     ██     ▓▓████▓▓  ██    ██      
echo          ▓▓       ▓▓▓▓       ▓▓       ▓▓▓▓    ▓▓    ▓▓      
echo [34m╔══════════════════════════════════════════════════════════╗
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╚══════════════════════════════════════════════════════════╝[0m
call Button 0 -1 00 " " 1 13 B0 "                        12345                         " 0 -1 00 " " 0 -1 00 " " 0 -1 00 " " 1 18 B0 "                      Study Sets                      " 0 -1 00 " " 0 -1 00 " " 0 -1 00 " " 1 23 B0 "                       Make Set                       " 0 -1 00 " " 0 -1 00 " " 0 -1 00 " " 1 28 B0 "                       Settings                       " 0 -1 00 " " 0 -1 00 " " 0 -1 00 " " 1 33 B0 "                       Credits                        " X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s
:: Buttons 2,6,10,14,18...
if %errorlevel%==2 goto :sets
if %errorlevel%==6 goto :sets
if %errorlevel%==10 goto :sets
if %errorlevel%==14 call :settings
if %errorlevel%==18 (
	echo [34;2H Created by [101;93mNotePro[0m                                       
	echo [35;2H                                                          
	echo [36;2H                                                          
	echo [37;2H                                                          
	timeout /t 3 /NOBREAK > nul
)	
goto :Home

:Sets
echo [0;0H[0;34m╔═══════╗                ╔═══════╗                 [0;34m╔═══════╗
echo ║[106m       [0;34m║                ║[106m       [0;34m║                 ║[106m       [0;34m║
echo ║[106m       [0;34m║                ║[106m       [0;34m║                 ║[106m       [0;34m║
echo ║[106m       [0;34m║                ║[106m       [0;34m║                 ║[106m       [0;34m║
echo ║[46m       [0;34m║                ║[46m       [0;34m║                 ║[46m       [0;34m║
echo ╚═══════╝                ╚═══════╝                 ╚═══════╝[0m
echo [34m╔══════════════════════════════════════════════════════════╗
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╚══════════════════════════════════════════════════════════╝[0m
echo [38;0H                                                            
for /L %%A in (1, 1, 6) do (
	for /r "C:\Study\Files\Lists" %%G in (*.bat) do @set "S%%A"="%%~nG"
)
call Button 10 -1 00 " " 1 1 B0 " < " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 26 1 B0 " H " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 52 1 B0 " > " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 7 B0 "                        Study                         " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 12 B0 "                        Study                         " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 17 B0 "                        Study                         " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 22 B0 "                        Study                         " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 27 B0 "                        Study                         " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 32 B0 "                        Study                         " X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s

::if %errorlevel%==1 call "C:\Study\Files\Lists\tutorial.bat" echo %q1%
:: Buttons 2,6,10,14,18...
if %errorlevel%==2 goto :Sets
if %errorlevel%==6 goto :Home
if %errorlevel%==10 goto :Sets
if %errorlevel%==14 goto :Sets
if %errorlevel%==18 goto :Sets
if %errorlevel%==22 goto :Sets
if %errorlevel%==26 goto :Sets
if %errorlevel%==30 goto :Sets
if %errorlevel%==34 goto :Sets

goto :Sets

:Learn
