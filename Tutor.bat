:: [
:: MAKE SURE THAT ALL FILES ARE INCLUDED!!!
@echo off
echo [?25l
chcp 65001> nul

setlocal ENABLEDELAYEDEXPANSION> nul
setlocal ENABLEEXTENSIONS> nul

mode 60,39> nul

title Tutor
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
		timeout 3 /NOBREAK > nul
		goto :Connection
	)
	curl -s -o "C:\Tutor\Files\Batbox.exe" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/batbox.exe"
)
if NOT EXIST "C:\Tutor\Files\GetInput.exe" (curl -s -o "C:\Tutor\Files\GetInput.exe" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/GetInput.exe")
if NOT EXIST "C:\Tutor\Files\Box.bat" (curl -s -o "C:\Tutor\Files\Box.bat" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/Box.bat")
if NOT EXIST "C:\Tutor\Files\Button.bat" (curl -k -s -o "C:\Tutor\Files\Button.bat" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/Button.bat")
if NOT EXIST "C:\Tutor\Files\Getlen.bat" (curl -k -s -o "C:\Tutor\Files\Getlen.bat" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/Getlen.bat")
if NOT EXIST "C:\Tutor\Files\Letter.bat" (curl -k -s -o "C:\Tutor\Files\Letter.bat" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/Letter.bat")
if NOT EXIST "C:\Tutor\Files\CurrentVersion.txt" (curl -k -s -o "C:\Tutor\Files\CurrentVersion.txt" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/CurrentVersion")
curl -k -s -o "C:\Tutor\Files\NewestVersion.txt" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/NewestVersion"
if NOT EXIST "C:\Tutor\Files\Lists" md C:\Tutor\Files\Lists
if NOT EXIST "C:\Tutor\Files\Lists\recent.txt" (
echo Tutor Tutorial                                        
)>"C:\Tutor\Files\Lists\recent.txt"
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
	timeout 2 /NOBREAK > nul
)
cls
cd..
cd "C:\Tutor\Files"
<"CurrentVersion.txt" set /p cVer=
<"NewestVersion.txt" set /p nVer=
if "%cVer%"=="%nVer%" (title Tutor %cVer%) ELSE (title Tutor %cVer% - UPDATE AVAILABLE)
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
call Button 1 13 B0 "%recent%" 1 18 B0 "                      Study Sets                      " 1 23 B0 "                       Make Set                       " 1 28 B0 "                       Settings                       " 1 33 B0 "                       Credits                        " X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s
if %errorlevel%==1 call :Learn 1
if %errorlevel%==2 goto :Sets1
if %errorlevel%==3 goto :Make
if %errorlevel%==4 goto :Settings
if %errorlevel%==5 (
	echo [34;2H Created by [101;93mNotePro[0m                                       
	echo [35;2H                                                          
	echo [36;2H Special thanks to [101;93mKotsasmin[0m                              
	echo [37;2H                                                          
	timeout 3 /NOBREAK > nul
)	
goto :Home

:Make
set /a qna=0
for /L %%A in (1,1,54) do set "L%%A= "
set/a char=0
cls

:nMake
set clr=1
if %char%==55 (echo [1;1H[0m Enter a set name 54/54 characters remaining) else echo [1;1H[0m Enter a set name %char%/54 characters remaining 
::do a fancy escape feature??
set "Name=%L1%%L2%%L3%%L4%%L5%%L6%%L7%%L8%%L9%%L10%%L11%%L12%%L13%%L14%%L15%%L16%%L17%%L18%%L19%%L20%%L21%%L22%%L23%%L24%%L25%%L26%%L27%%L28%%L29%%L30%%L31%%L32%%L33%%L34%%L35%%L36%%L37%%L38%%L39%%L40%%L41%%L42%%L43%%L44%%L45%%L46%%L47%%L48%%L49%%L50%%L51%%L52%%L53%%L54%"
set/a xPos=%char%+4
echo [?25l[2;0H[0;34m╔══════════════════════════════════════════════════════════╗
echo ║[106m                                                          [0;34m║
echo ║[106m  [30m%Name%  [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                    Press esc to exit                     [0;34m║
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
set/a char+=1
getinput
if %errorlevel%==27 goto :Home
if %errorlevel%==13 (
	echo.%Name%>>"C:\Tutor\Files\Lists\Lists.txt"
	goto :Questions
)
call Letter.bat %errorlevel%
goto :nMake

:Questions
:: Remove below CLS when ready?
:: have an escape into the blue area under the set name?
cls
set/a qna+=1
echo Press "enter" on an empty question box to stop
echo No special characters please, USE AT YOUR OWN RISK
set "q%qna%= "
set/p "q%qna%=Question %qna%: "
if "!q%qna%!"==" " (
	echo [0m
	cls
	goto :Home
)
set/p "a%qna%=Answer %qna%: "
(
echo set "q%qna%=!q%qna%!"
echo set "a%qna%=!a%qna%!"
)>>"C:\Tutor\Files\Lists\%Name%.bat"
goto :Questions

:Settings
cls
echo Nothing here yet...
call Button 1 13 B0 "hello" X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s
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
call Button 1 1 B0 " < " 26 1 B0 " H " 52 1 B0 " > " 1 7 B0 "%Name1%" 1 12 B0 "%Name2%" 1 17 B0 "%Name3%" 1 22 B0 "%Name4%" 1 27 B0 "%Name5%" 1 32 B0 "%Name6%" X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s
if %errorlevel%==1 call :mieq
::Goes to home Might want to change it to word "Home" odd letter button
if %errorlevel%==2 goto :Home
if %errorlevel%==3 call :pleq
::All below open sets
:: call :open.bat %Name(number)%
if %errorlevel%==4 call :Learn 1
if %errorlevel%==5 call :Learn 2
if %errorlevel%==6 call :Learn 3
if %errorlevel%==7 call :Learn 4
if %errorlevel%==8 call :Learn 5
if %errorlevel%==9 call :Learn 6
goto :Sets2

:pleq
set/a sNum+=6
set/a nSix=%num%/6*6
if %nSix% LEQ %num% if %sNum% GEQ %numChck% call :blankButtons
exit/b

:mieq
set/a sNum-=6
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
	timeout 3 >nul
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
if %errorlevel%==4 exit/b 100
goto :flashcards
