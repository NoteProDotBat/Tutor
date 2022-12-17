:: [
:: MAKE SURE THAT ALL FILES ARE INCLUDED!!!
:: Duplicate file names with different contents. if EXIST file (the file exists but the contents inside are not what are needed for that version to work. (Name Tutor folder with version number EX: Tutor v1.1.1 BETA)
@echo off
echo [?25l
chcp 65001> nul

setlocal ENABLEDELAYEDEXPANSION> nul
setlocal ENABLEEXTENSIONS> nul

mode 60,39> nul

title Tutor v1.0.0 BETA
:Connection
echo Testing Connection...
ping github.com -n 1 -w 3000 > nul
if %errorlevel%==1 (
	cls
	echo No internet connection!
	echo Press "1" to retry
	echo Press "2" to continue
	echo Press "3" to exit
	choice /c 123 /n /d 1 /t 5
)
if %errorlevel%==1 goto :Connection
if %errorlevel%==3 exit
if NOT EXIST "C:\Tutor" md C:\Tutor
if NOT EXIST "C:\Tutor\Files" md C:\Tutor\Files
:: There is a github direct download link! use that after you are done with Tutor.
if NOT EXIST "C:\Tutor\Files\Batbox.exe" (
	if %errorlevel%==2 (
		echo Unable to finish downloads. Please try again later.
		timeout /t 3 /NOBREAK > nul
		goto :Connection
	)
	curl -s -o "C:\Tutor\Files\Batbox.exe" "https://github.com/NoteProDotBat/Tutor/blob/main/batbox.exe?raw=true"
)
if NOT EXIST "C:\Tutor\Files\GetInput.exe" (curl -s -o "C:\Tutor\Files\GetInput.exe" "https://github.com/NoteProDotBat/Tutor/blob/main/GetInput.exe?raw=true")
if NOT EXIST "C:\Tutor\Files\Box.bat" (curl -s -o "C:\Tutor\Files\Box.bat" "https://github.com/NoteProDotBat/Tutor/raw/main/Box.bat")
if NOT EXIST "C:\Tutor\Files\Button.bat" (curl -s -o "C:\Tutor\Files\Button.bat" "https://github.com/NoteProDotBat/Tutor/raw/main/Button.bat")
if NOT EXIST "C:\Tutor\Files\Getlen.bat" (curl -s -o "C:\Tutor\Files\Getlen.bat" "https://github.com/NoteProDotBat/Tutor/raw/main/Getlen.bat")
if NOT EXIST "C:\Tutor\Files\Letter.bat" (curl -s -o "C:\Tutor\Files\Letter.bat" "https://github.com/NoteProDotBat/Tutor/raw/main/Letter.bat")
::ADD THE OTHER FILES HERE
if NOT EXIST "C:\Tutor\Files\Lists" md C:\Tutor\Files\Lists
if NOT EXIST "C:\Tutor\Files\Lists\Lists.txt" (
echo Tutor Tutorial                                        
)>"C:\Tutor\Files\Lists\Lists.txt"
if NOT EXIST "C:\Tutor\Files\Lists\Tutor Tutorial                                        .bat" (
	(
		echo set q1=How do you create a set?
		echo set a1=Press the button
		echo set q2=How many questions are required to make a set?
		echo set a2=Going to be a minimum of 4 on release date.
		echo set q3=Is batch awsome?
		echo set a3=Yes!!!
		echo set q4=Is earth a star?
		echo set a4=No
	)>"C:\Tutor\Files\Lists\Tutor Tutorial                                        .bat"
	echo Welcome to the Study Tool!
	timeout /t 2 /NOBREAK > nul
)
cls
cd..
cd "C:\Tutor\Files"
::%%~nxG
:: Exit button?
:Home
mode 60,39> nul
echo [?25l[0;0H[0m                                                            
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
<"C:\Tutor\Files\Lists\recent.txt" set /p recent=
set "Name1=%recent%"
call Button 0 -1 00 " " 1 13 B0 "%recent%" 0 -1 00 " " 0 -1 00 " " 0 -1 00 " " 1 18 B0 "                      Study Sets                      " 0 -1 00 " " 0 -1 00 " " 0 -1 00 " " 1 23 B0 "                       Make Set                       " 0 -1 00 " " 0 -1 00 " " 0 -1 00 " " 1 28 B0 "                       Settings                       " 0 -1 00 " " 0 -1 00 " " 0 -1 00 " " 1 33 B0 "                       Credits                        " X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s
:: Buttons 2,6,10,14,18...
if %errorlevel%==2 call :Learn 1
if %errorlevel%==6 goto :Sets1
if %errorlevel%==10 goto :Make
if %errorlevel%==14 goto :Settings
if %errorlevel%==18 (
	echo [34;2H Created by [101;93mNotePro[0m                                       
	echo [35;2H                                                          
	echo [36;2H                                                          
	echo [37;2H                                                          
	timeout /t 3 /NOBREAK > nul
)	
goto :Home

:Make
set /a qna=0
REM cls
REM getinput
REM echo %%errorlevel%%
REM pause > nul
REM goto :Make
for /L %%A in (1,1,54) do set "L%%A= "
set/a char=0
cls

:nMake
if %char%==55 (echo [1;1H[0m Enter a set name 54/54 characters remaining) else echo [1;1H[0m Enter a set name %char%/54 characters remaining 
::do a fancy escape feature??
::exit button?
set "Name=%L1%%L2%%L3%%L4%%L5%%L6%%L7%%L8%%L9%%L10%%L11%%L12%%L13%%L14%%L15%%L16%%L17%%L18%%L19%%L20%%L21%%L22%%L23%%L24%%L25%%L26%%L27%%L28%%L29%%L30%%L31%%L32%%L33%%L34%%L35%%L36%%L37%%L38%%L39%%L40%%L41%%L42%%L43%%L44%%L45%%L46%%L47%%L48%%L49%%L50%%L51%%L52%%L53%%L54%"
set/a xPos=%char%+4
echo [?25l[2;0H[0;34m╔══════════════════════════════════════════════════════════╗
echo ║[106m                                                          [0;34m║
echo ║[106m  [30m%Name%  [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ╚══════════════════════════════════════════════════════════╝[0m
if %char% GEQ 54 (
	set/a char=54
	Echo [3;2H[106;30mMax character Limit!
) else echo [3;2H[106;30m                    
::Make sure that all of the files that you used are put in needed files!!!
::Create Letter.bat and add it to needed files
set/a char+=1
getinput
if %errorlevel%==13 (
	echo.%Name%>>"C:\Tutor\Files\Lists\Lists.txt"
	goto :questions
)
call Letter.bat %errorlevel%
goto :nMake

:Questions
:: Remove below CLS when ready
:: have an escape into the blue area under the set name?
cls
set/a qna+=1
echo Press "enter" on an empty question box to stop
echo No special characters please! USE AT OWN RISK
set/p "q%qna%=Question %qna%: "
if "!q%qna%!"=="" goto :Home
set/p "a%qna%=Answer %qna%: "
(
echo set "q%qna%=!q%qna%!"
echo set "a%qna%=!a%qna%!"
)>>"C:\Tutor\Files\Lists\%Name%.bat"
goto :Questions

:Settings
cls
echo Nothing here yet...
pause> nul
goto :Home

:Sets1
set/a num=1
set/a sNum=0
set "blank=                                                      "
call :blankButtons
for /f "usebackq delims=* tokens=1 " %%G in ("C:\Tutor\Files\Lists\Lists.txt") do (
	@set "sName=%%G"
	call :Work1
)
set/a numChck=%num%-6
goto :sets3

:Sets2
set/a Nnums=1
if %sNum% LEQ 0 (
	set/a sNum=0
	for /f "usebackq delims=* tokens=1 " %%G in ("C:\Tutor\Files\Lists\Lists.txt") do (
		@set "sName=%%G"
		call :Work2
	)
) ELSE (
	for /f "usebackq delims=* tokens=1 skip=%sNum%" %%G in ("C:\Tutor\Files\Lists\Lists.txt") do (
		@set "sName=%%G"
		call :Work2
	)
)

:sets3
mode 60,39> nul
echo [?25l[0;0H[0;34m╔═══════╗                ╔═══════╗                 [0;34m╔═══════╗
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
call Button 10 -1 00 " " 1 1 B0 " < " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 26 1 B0 " H " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 52 1 B0 " > " 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 7 B0 "%Name1%" 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 12 B0 "%Name2%" 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 17 B0 "%Name3%" 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 22 B0 "%Name4%" 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 27 B0 "%Name5%" 10 -1 00 " " 10 -1 00 " " 10 -1 00 " " 1 32 B0 "%Name6%" X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s
:: Buttons 2,6,10,14,18...
if %errorlevel%==2 call :mieq
::Goes to home Might want to change it to word "Home" odd letter button
if %errorlevel%==6 goto :Home
if %errorlevel%==10 call :pleq
::All below open sets
:: call :open.bat %Name(number)%
if %errorlevel%==14 call :Learn 1
if %errorlevel%==18 call :Learn 2
if %errorlevel%==22 call :Learn 3
if %errorlevel%==26 call :Learn 4
if %errorlevel%==30 call :Learn 5
if %errorlevel%==34 call :Learn 6
goto :Sets2

::Keep in mind that %num% is the number of sets
:pleq
set/a sNum+=6
set/a nSix=%num%/6*6
if %nSix% LEQ %num% if %sNum% GEQ %numChck% call :blankButtons
exit/b

:mieq
set/a sNum-=6
REM if %sNum% LSS 0 (
	REM set/a sNum=%nSix%
	REM call :blankButtons
REM )
:: make a page loop feature
exit/b

:blankButtons
for /l %%A in (1,1,6) do set "Name%%A=%blank%"
exit/b

:work1
if "%sName%"=="" set "sName=%blank%"
set "Name%num%=%sName%"
set "pName%num%=%sName%"
set/a num+=1
exit/b

:work2
if "%sName%"=="" set "sName=%blank%"
set "Name%Nnums%=%sName%"
set/a Nnums+=1
@echo off
exit/b

:Learn
set card=1
set i=1
if "!Name%1!"=="                                                      " (
	echo Nothing here!
	timeout/t 3 >nul
	exit/b
)
set Flines=0
(
echo !Name%1!
)>"C:\Tutor\Files\Lists\recent.txt"
for /f "usebackq" %%A in ("C:\Tutor\Files\Lists\!Name%1!.bat") do (
	set/a Flines+=1
)
call "C:\Tutor\Files\Lists\!Name%1!.bat"
set/a questions=%Flines%/2
:: You better change this!!
:flashcards
mode 65,39> nul
cls
echo [?25l[0;0H Press "A" to go left, "D" to go right and "S" to flip the card
echo  Press 0 to exit
echo.
if %card%==1 echo !q%i%!
if %card%==-1 echo !a%i%!
choice /c asd0 /n >nul
if %errorlevel%==1 (
	set card=1
	set/a i-=1
	if !i! LSS 1 set i=1
)
if %errorlevel%==2 set/a card=%card%*-1
if %errorlevel%==3 (
	set card=1
	set/a i+=1
	if !i! GTR %questions% set i=%questions%
)
if %errorlevel%==4 exit/b
goto :flashcards
