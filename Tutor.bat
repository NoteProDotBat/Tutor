:: Welcome to the backend!
:: [
:: [y;xH
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                               ::
::                                       Tutor Error Chart                                       ::
::                                                                                               ::
::    Error#                                                                                     ::
::             000 - Missing Source File                                                         ::
::             001 - Missing Study Set File                                                      ::
::             002 - Accessing Empty File                                                        ::
::             003 - File Creation Failed                                                        ::
::             004 - File Deletion Failed                                                        ::
::             005 - Bad Internet Connection                                                     ::
::             006 -                                                                             ::
::             007 -                                                                             ::
::             008 -                                                                             ::
::                                                                                               ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                               :: ┬ ├ └ │
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                               ::
::                                         Future Plans                                          ::
::                                                                                               ::
::    #0 - Edit study sets                                                                       ::
::    #1 ┬ Add study set preview                                                                 ::
::       └ #1.0 - Show number of questions and the first question                                ::
::    #2 ┬ Better UI for creating sets                                                           ::
::       ├ #2.0 - Set name and questions on the same screen                                      ::
::       ├ #2.1 ┬ Improve the use of GetInput                                                    ::
::       │      └ #1.1.0 - ctrl + backspace and more                                             ::
::       ├ #2.2 - scroll the questions up                                                        ::
::       └ #2.3 ┬ edit questions after entering them                                             ::
::              └ #2.3.0 - Use arrow keys to scroll through questions                            ::
::    #3 - Conjugation chart for learning languages                                              ::
::    #4 - Better settings UI and more options                                                   ::
::    #5 - Remove/change most recent set after set deletion                                      ::
::    #6 ┬ Better UI for studying sets                                                           ::
::       └ #6.0 - questions are on flashcards                                                    ::
::    #7 - More error#s                                                                          ::
::                                                                                               ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                               ::
::                                        Potential Plans                                        ::
::                                                                                               ::
::    #0 ┬ Speak questions and answers                                                           ::
::       └ #0.0 - Create voice settings (change voice & enable/disable)                          ::
::    #1 - Create Tutor in another language                                                      ::
::                                                                                               ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


@echo off
echo [?25l
chcp 65001> nul

setlocal ENABLEDELAYEDEXPANSION> nul
setlocal ENABLEEXTENSIONS> nul

mode 60,39> nul

REM :loop
REM set/p "a=string: "
REM echo !a!
REM set "a=!a:%%=%%%%!"
REM set "a=%a:!=^^^!%"
REM echo !a!
REM pause
REM goto:loop

title Tutor
:Connection
set LatestV=0
echo Testing Connection...
ping github.com -n 1 -w 3000 > nul
if %errorlevel%==1 (
	cls
	echo ERROR#005 - Bad internet connection.
	echo Press "1" to retry
	echo Press "2" to continue
	echo Press "3" to exit
	choice /c 123 /n /d 1 /t 10
)
if %errorlevel%==1 goto:Connection
if %errorlevel%==3 exit
if NOT EXIST "C:\Tutor" md C:\Tutor
if NOT EXIST "C:\Tutor\Files" md C:\Tutor\Files
if NOT EXIST "C:\Tutor\Files\Batbox.exe" (
	if %errorlevel%==2 (
		echo Unable to finish downloads. Please try again later.
		echo ERROR#000 - File missing.
		timeout 3 /NOBREAK > nul
		goto:Connection
	)
	curl -k -s -o "C:\Tutor\Files\Batbox.exe" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/batbox.exe"
)
if NOT EXIST "C:\Tutor\Tutor.bat" (
	(
		type %~f0
	)>"C:\Tutor\Tutor.bat"
)
for %%A in (GetInput.exe, Box.bat, Button.bat, Getlen.bat, Letter.bat, CurrentVersion.txt) do (
	if NOT EXIST "C:\Tutor\Files\%%A" (curl -k -s -o "C:\Tutor\Files\%%A" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/%%A")
)
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
		echo set q3=Is batch awesome?
		echo set a3=Yes
		echo set q4=Is earth a star?
		echo set a4=No
	)>"C:\Tutor\Files\Lists\Tutor Tutorial                                        .bat"
	echo Welcome to the Study Tool!
	timeout 2 /NOBREAK > nul
)
cls
cd..
cd "C:\Tutor\Files"

:top
<"CurrentVersion.txt" set /p cVer=
<"NewestVersion.txt" set /p nVer=
if "%cVer%"=="404: Not Found" (
	echo.%nVer%>"C:\Tutor\Files\CurrentVersion.txt"
	set "cVer=%nVer%"
)
if "%cVer%"=="%nVer%" (title Tutor %cVer%) ELSE (set "LatestV=1" && title Tutor %cVer% - UPDATE AVAILABLE)
set "blank=                                                      "
echo [0m
cls
::%%~nxG
:: Exit button?
REM :top
REM getinput
REM echo %errorlevel%
REM goto:top
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
if "%LatestV%"=="1" (echo ║[104m                                                          [0;34m║) ELSE (echo ║[106m                                                          [0;34m║)
if "%LatestV%"=="1" (echo ║[104m                                                          [0;34m║) ELSE (echo ║[106m                                                          [0;34m║)
if "%LatestV%"=="1" (echo ║[104m                                                          [0;34m║) ELSE (echo ║[106m                                                          [0;34m║)
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╚══════════════════════════════════════════════════════════╝[0m
<"C:\Tutor\Files\Lists\recent.txt" set/p recent=
set "Name1=%recent%"
if "%LatestV%"=="1" (call Button 1 13 B0 "%recent%" 1 18 B0 "                      Study Sets                      " 1 23 B0 "                       Make Set                       " 1 28 90 "                       Settings                       " 1 33 B0 "                       Credits                        " X _Var_Box _Var_Hover) ELSE (call Button 1 13 B0 "%recent%" 1 18 B0 "                      Study Sets                      " 1 23 B0 "                       Make Set                       " 1 28 B0 "                       Settings                       " 1 33 B0 "                       Credits                        " X _Var_Box _Var_Hover)
getinput /m %_Var_Box% /h %_Var_Hover%s
if %errorlevel%==1 call:Learn 1
if %errorlevel%==2 goto:Sets1
if %errorlevel%==3 goto:Make
if %errorlevel%==4 goto:Settings
if %errorlevel%==5 (
	echo [34;2H Created by:                              [101;93mNotePro[0m         
	echo [35;2H Batbox by:                               [101;93mDarkBatcher[0m     
	echo [36;2H GetInput by:                             [101;93mAacini[0m          
	echo [37;2H Special thanks to:                       [101;93mKotsasmin[0m       
	timeout 5 /NOBREAK > nul
)	
goto:Home

:Make
::echo [?12h
set Dupe=0
set /a qna=0
for /L %%A in (1,1,54) do set "L%%A= "
set/a char=0
cls
echo [2;0H[0;34m╔══════════════════════════════════════════════════════════╗
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                    Press ESC to exit                     [0;34m║
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

:nMake
if %char%==55 (echo [1;1H[0m Enter a set name 54/54 characters remaining) else echo [1;1H[0m Enter a set name %char%/54 characters remaining 
set "Name=%L1%%L2%%L3%%L4%%L5%%L6%%L7%%L8%%L9%%L10%%L11%%L12%%L13%%L14%%L15%%L16%%L17%%L18%%L19%%L20%%L21%%L22%%L23%%L24%%L25%%L26%%L27%%L28%%L29%%L30%%L31%%L32%%L33%%L34%%L35%%L36%%L37%%L38%%L39%%L40%%L41%%L42%%L43%%L44%%L45%%L46%%L47%%L48%%L49%%L50%%L51%%L52%%L53%%L54%"
set/a xPos=%char%+4
if NOT %errorlevel%==0 (
	echo.[4;4H[106m[30m%Name%
)

if %char% GEQ 54 (
	set/a char=54
	echo [3;2H[106;30mMax character Limit!
) else (
	echo [3;2H[106;30m                    
	echo [4;%xPos%H█
)
if %Dupe%==1 (
	set Dupe=0
	echo [5;25H[106;30mName in use
) else (
	 if NOT %errorlevel%==0 echo.[5;25H           
)

getinput /T 0
echo [?25l

if %errorlevel%==27 goto:Home
if %errorlevel%==13 (
	if "%Name%"=="                                                      " set Dupe=1 && goto:nMake
	for /f "usebackq delims=* tokens=1" %%A in ("C:\Tutor\Files\Lists\Lists.txt") do (
		if /I "%%A"=="%Name%" set Dupe=1 && goto:nMake
	)
	goto:Questions
)
if NOT %errorlevel%==0 (
	set/a char+=1
	call Letter.bat %errorlevel%
)
goto:nMake

:Questions
mode 60,39> nul
:: have an escape into the blue area under the set name?
echo [?25h
set/a qna+=1
:Qs
cls
echo Press "enter" on an empty question box to stop.
set "q%qna%= "
if %Dupe%==1 (set Dupe=0 && echo Question already exists.) ELSE echo.[3;1H                        
set/p "q%qna%=Question %qna%:[1E"
:: If question is empty
if "!q%qna%!"==" " (
	if %qna% GTR 4 (
		echo [0m[?25l
		cls
		goto:Home
	) else (
		cls
		echo You do not have at least 4 questions.
		echo Press "1" to exit without saving
		echo Press "2" to continue creating
		choice /c 12 /n
		if !errorlevel!==1 if %qna% GTR 1 (
			set "Name1=%Name%"
			call:Delete 1
			if !errorlevel!==50 goto:top
		) ELSE goto:top
		goto:Qs
	)
)
:: Duplicate question check
set line=-1
if %qna% GEQ 2 for /f "usebackq tokens=2 delims==" %%A in ("C:\Tutor\Files\Lists\%Name%.bat") do (
	set "A=%%A"
	set/a line*=-1
	if /I "!A:~0,-1!"=="!q%qna%!" if !line!==1 set Dupe=1 && goto:Qs
)
set/p "a%qna%=Answer %qna%:[1E"

:: Checks for ! and % to include them
:: 
set string=!q%qna%!
call:escSpecialChars
set "q%qna%=%string%"

set string=!a%qna%!
call:escSpecialChars "!a%qna%!"
set "a%qna%=%string%"

if NOT exist "C:\Tutor\Files\Lists\%Name%.bat" echo.%Name%>>"C:\Tutor\Files\Lists\Lists.txt"
(
echo set "q%qna%=!q%qna%!"
echo set "a%qna%=!a%qna%!"
)>>"C:\Tutor\Files\Lists\%Name%.bat"
goto:Questions

:: Store the length of the question/answer into a file?
:escSpecialChars
:: substitutuion	= (^^)(^^)(^^)(^!)
:: string			= (^^)(^!)
:: q/a				= (^!)
set "string=!string:%%=%%%%!"
set "string=%string:!=^^^^^^^!%"
exit/b 100

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: update the app in a new instance and update all files
:: also update the Tutor.bat file so that you know what version of the main file you are using if you are opening an older version of the main file
:: or you can create a launcher that allows the user to choose the download location and ... you know what follows
:Settings
cls
call Button 1 13 B0 "Update" 1 5 B0 "Delete Tutor" X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s
if %errorlevel%==1 (
	if "%LatestV%"=="1" (
		ping github.com -n 1 -w 3000 > nul
		if !errorlevel!==1 cls & echo ERROR#005 - Unable to update, please try again. & pause & goto:Settings
		start cmd.exe /R "@echo off & title Update Tutor & cls & echo Updating Tutor... & timeout 1 /NOBREAK >nul && curl -k -s -o "C:\Tutor\Tutor.bat" "https://raw.githubusercontent.com/NoteProDotBat/Tutor/main/Tutor.bat" && echo Update complete. & echo Launching Tutor. & timeout 1 /NOBREAK >nul && start cmd.exe /R "C:\Tutor\Tutor.bat""
		echo.%nVer%>"C:\Tutor\Files\CurrentVersion.txt"
		exit
	) ELSE (
		echo [5EYou already have the latest version of Tutor.
		timeout 3 >nul
	)
)
if %errorlevel%==2 (
	cls
	echo.
	echo Are you sure you want to delete Tutor?
	echo Hold shift and press a key:
	choice /c YN /cs
	if !errorlevel!==2 goto:Settings
	cls
	echo.
	echo Would you like to delete all study sets?
	echo Hold shift and press a key:
	choice /c YN /cs
	if !errorlevel!==1 (
		del "C:\Tutor"
		if EXIST "C:\Tutor" (
			echo ERROR#004 - Failed to delete Tutor.
			echo Press 1 to retry
			echo Press 2 to close
			choice /c 12 /n
			if !errorlevel!==1 goto:Settings
			exit
		) else echo It seems you opened Tutor from another directory. Close this window to finish.
		pause>nul
	)
	if !errorlevel!==2 (
		move "C:\Tutor\Files\Lists" "C:\Tutor\"
		start cmd.exe /K "@echo off & title Remaining Files & cls & timeout 1 /NOBREAK >nul && echo Close this window when done. & echo. & echo --Any Message Below Here Is An Error-- & echo. & for /R "C:\Tutor" %%A in (*) do (@echo Failed to delete %%A)"
		start cmd.exe /R "@echo off & title Move Study Sets & cls & timeout 1 /NOBREAK >nul && move C:\Tutor\Lists C:\Tutor\Files\ & echo. & echo --Any Message Above Here Is An Error-- & echo. & echo Deletion complete. & pause"
		for /R "C:\Tutor\Files" %%A in (*) do del %%A
		del "C:\Tutor\Tutor.bat"
		pause
		exit
	)
)
:: interesting command: start cmd.exe /R "@echo off && timeout 1 /NOBREAK >nul && for %A in (GetInput.exe, Box.bat, Button.bat, Getlen.bat, Letter.bat, Batbox.exe) do (if EXIST %A echo ERROR#004 - Failed to delete %A && timeout 1 >nul)"
cls
goto:connection

:Sets1
set/a num=1
set/a sNum=0
set/a nSix=%num%/6*6
call:blankButtons
for /f "usebackq delims=* tokens=1 " %%G in ("C:\Tutor\Files\Lists\Lists.txt") do (
	@set "sName=%%G"
	call:Work1
)
set/a Flines=0
for /f "usebackq" %%A in ("C:\Tutor\Files\Lists\Lists.txt") do (
	set/a Flines+=1
)
set/a pages = %Flines% / 6 + 1
set/a page = 1
set/a numChck=%num%-6
goto:sets3


:Sets2
set/a Nnums=1
if %sNum% == 0 (
	set/a sNum=0
	for /f "usebackq delims=* tokens=1" %%G in ("C:\Tutor\Files\Lists\Lists.txt") do (
		@set "sName=%%G"
		call:Work2
	)
) ELSE if %sNum% LSS 0 (
	set/a sNum=%pages% * 6 - 6
	for /f "usebackq delims=* tokens=1" %%G in ("C:\Tutor\Files\Lists\Lists.txt") do (
		@set "sName=%%G"
		call:Work2
	)
) ELSE (
	for /f "usebackq delims=* tokens=1 skip=%sNum%" %%G in ("C:\Tutor\Files\Lists\Lists.txt") do (
		@set "sName=%%G"
		call:Work2
	)
)

:: make %page% use an escape
:: Create page numbers and page loop
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
echo [38;0H                           %page% /                         
echo [38;31H%pages%
call Button 1 1 B0 " < " 26 1 B0 " H " 52 1 B0 " > " 1 7 B0 "%Name1%" 1 12 B0 "%Name2%" 1 17 B0 "%Name3%" 1 22 B0 "%Name4%" 1 27 B0 "%Name5%" 1 32 B0 "%Name6%" X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s
if %errorlevel%==1 call:mieq
if %errorlevel%==2 goto:Home
if %errorlevel%==3 call:pleq
::All below open sets
if %errorlevel%==4 call:Learn 1
if %errorlevel%==5 call:Learn 2
if %errorlevel%==6 call:Learn 3
if %errorlevel%==7 call:Learn 4
if %errorlevel%==8 call:Learn 5
if %errorlevel%==9 call:Learn 6
if %errorlevel%==50 call:blankButtons
goto:Sets2

:pleq
set/a page+=1
if %page% GTR %pages% (
	set/a page=1
	set/a sNum=0
) else (
	set/a sNum+=6
	set/a nSix=%num%/6*6
)
if %nSix% LEQ %num% if %sNum% GEQ %numChck% call:blankButtons
exit/b

:mieq
if %page% GTR 1 (
	set/a page-=1
	set/a sNum-=6
) else (
	set/a page=%pages%
	set/a sNum=6 * %pages% - 6
	call:blankButtons
)
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
exit/b

:Learn
echo [?25l[0;0H[0m                                                            
echo [?25l[2;0H[0;34m╔══════════════════════════════════════════════════════════╗
echo ║[106m                                                          [0;34m║
echo ║[106m  [30m!Name%1!  [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╠══════════════════════════════════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                    Press ESC to exit                     [0;34m║
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
echo.                                                            
call Button 1 22 B0 "                        Study                         " 1 27 B0 "                         Edit                         " 1 32 B0 "                        Delete                        " X _Var_Box _Var_Hover

getinput /m %_Var_Box% /h %_Var_Hover%s
if %errorlevel%==2 goto:Edit
if %errorlevel%==3 goto:Delete
if %errorlevel%==27 goto:Home

set smartStudy=-1
set swapStudy=-1
set mixed=0

:LearnMethod
echo [23;0H[0;34m╠═════════════════════════════╦════════════════════════════╣
echo ║[106m                             [0;34m║[106m                            [0;34m║
echo ║[106m                             [0;34m║[106m                            [0;34m║
echo ║[106m                             [0;34m║[106m                            [0;34m║
echo ║[46m                             [0;34m║[46m                            [0;34m║
echo ╠═════════════════════════════╬════════════════════════════╣
echo ║[106m                             [0;34m║[106m                            [0;34m║
echo ║[106m                             [0;34m║[106m                            [0;34m║
echo ║[106m                             [0;34m║[106m                            [0;34m║
echo ║[46m                             [0;34m║[46m                            [0;34m║
echo ╠═════════════════════════════╩════════════════════════════╣
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[106m                                                          [0;34m║
echo ║[46m                                                          [0;34m║
echo ╚══════════════════════════════════════════════════════════╝[0m

if %smartStudy%==-1 (
	set "color=B0"
) else (
	set "color=90"
)

call Button 1 23 B0 "        Flashcards       " 31 23 B0 "     Multiple Choice    " 1 28 B0 "     Written Response    " 31 28 B0 "       Mixed Study      " 1 33 %color% "   (bool)             Smart Study            (bool)   " X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s

if %errorlevel%==5 set/a smartStudy *= -1 && goto:LearnMethod
if %errorlevel%==27 goto:Home
set "studyType=%errorlevel%"
:: Pass %smartStudy% into the chosen study method? (note: %smartStudy% is local)

echo [23;0H[0;34m╠══════════════════════════════════════════════════════════╣
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

call Button 1 23 %color% "                      Study Front                     " 1 28 %color% "                       Study Back                     " 1 33 %color% "                       Study Both                     " X _Var_Box _Var_Hover
getinput /m %_Var_Box% /h %_Var_Hover%s

:: Study front
if %errorlevel%==1 set/a studySide = 1
:: Study back
if %errorlevel%==2 set/a studySide = -1
:: Study both
if %errorlevel%==3 set/a mixed = 1
if %errorlevel%==27 goto:Home

::::::::::::::::::::::::::::::::::::::::::::::::::Dont forget about %smartStudy%
:: Flashcards
if %studyType%==1 goto:FlashcardSetup
:: Multiple choice
if %studyType%==2 echo hi
:: Written
if %studyType%==3 echo hi
:: Mixed
if %studyType%==4 echo hi

:FlashcardSetup
:: The side of the card
if !mixed!==1 (
	set/a studySide = !random! %% 2
	if !studySide!==0 set/a studySide-=1
)
set/a card=1 * %studySide%
set i=1
if "!Name%1!"=="%blank%" (
	cls
	echo Nothing here!
	timeout 3 >nul
	exit/b
)
if NOT EXIST "C:\Tutor\Files\Lists\!Name%1!.bat" (
	cls && echo.
	echo ERROR#001 - File missing.
	echo Please report if the problem persists
	pause> nul
	exit/b 100
)
set Flines=0
(
echo !Name%1!
)>"C:\Tutor\Files\Lists\recent.txt"
for /f "usebackq" %%A in ("C:\Tutor\Files\Lists\!Name%1!.bat") do (
	set/a Flines+=1
)
::forgot what I wanted to do the comment below for
:: Change this so edit es easier to code?
call "C:\Tutor\Files\Lists\!Name%1!.bat"
set/a questions=%Flines%/2

::: Looking better but you still need to have more study options and prevent spliting words
:flashcards
mode 60,39> nul
cls
echo [?25l[0;0H Press arrow keys to flip the card.
echo  Press "escape" to exit
echo.
if %card%==1 echo !q%i%!
if %card%==-1 echo !a%i%!
echo.
echo  %i%/%questions%
getinput
if %errorlevel%==293 call:leftCard
if %errorlevel%==296 set/a card*=-1
if %errorlevel%==294 set/a card*=-1
if %errorlevel%==13 set/a card*=-1
if %errorlevel%==32 set/a card*=-1
if %errorlevel%==295 (
	call:rightCard
	if !i! GTR %questions% (
		set i=1
		cls
		echo [?25l[0;0H Press arrow keys to navigate the cards.
		echo  Press "escape" to exit
		echo.
		echo Shuffling %questions% terms.
		echo.
		echo  %i%/%questions%   Shuffling terms...
		goto:ShPrep
	)
)
if %errorlevel%==27 exit/b 100
goto:flashcards

:ShPrep

echo..>"C:\Tutor\Files\Lists\ShOrder.txt"

:: Create an array for shuffling numbers
for /L %%A in (1,1,%questions%) do (
    set "arr[%%A]=%%A"
)

:: Shuffle using Fisher-Yates algorithm
for /L %%i in (%questions%,-1,2) do (
    set/a "j=!random! %% %%i + 1"
	for %%j in (!j!) do (
		set "temp=!arr[%%i]!"
		set "arr[%%i]=!arr[%%j]!"
		set "arr[%%j]=!temp!"
	)
)

for /L %%A in (1,1,%questions%) do (
	echo.!arr[%%A]!>>"C:\Tutor\Files\Lists\ShOrder.txt"
)
goto :ShStudy

:ShStudy
:: get the numbers from the file ShuffleOrder and make that the q/a order
mode 60,39> nul
call:number
cls
echo [?25l[0;0H Press arrow keys to navigate the cards.
echo  Press "escape" to exit
echo.
if %card%==1 echo !q%num%!
if %card%==-1 echo !a%num%!
echo.
echo  %i%/%questions%
getinput
if %errorlevel%==293 call:leftCard
if %errorlevel%==296 set/a card*=-1
if %errorlevel%==294 set/a card*=-1
if %errorlevel%==13 set/a card*=-1
if %errorlevel%==32 set/a card*=-1
if %errorlevel%==295 (
	call:rightCard
	if !i! GTR %questions% (
		set i=1
		cls
		echo [?25l[0;0H Press arrow keys to navigate the cards.
		echo  Press "escape" to exit
		echo.
		echo Shuffling %questions% terms.
		echo.
		echo  %i%/%questions%   Shuffling terms...
		goto:ShPrep
	)
)
if %errorlevel%==27 (
	if EXIST "C:\Tutor\Files\Lists\Shuffle.txt" del "C:\Tutor\Files\Lists\Shuffle.txt" > nul
	if EXIST "C:\Tutor\Files\Lists\ShReplace.txt" del "C:\Tutor\Files\Lists\ShReplace.txt" > nul
	if EXIST "C:\Tutor\Files\Lists\ShOrder.txt" del "C:\Tutor\Files\Lists\ShOrder.txt" > nul
	exit/b 50
)
goto:ShStudy

:number
for /f "usebackq skip=%i%" %%A in ("C:\Tutor\Files\Lists\ShOrder.txt") do (
	set "num=%%A"
	exit/b
)

:leftCard
if !mixed!==1 (
	set/a studySide = !random! %% 2
	if !studySide!==0 set/a studySide-=1
)
set/a card=1 * %studySide%
set/a i-=1
if !i! LSS 1 set i=1
exit/b 100

:rightCard
if !mixed!==1 (
	set/a studySide = !random! %% 2
	if !studySide!==0 set/a studySide-=1
)
set/a card=1 * %studySide%
set/a i+=1
exit/b 100


:Delete
cls
echo Are you sure you want to delete
echo "!Name%1!"?
echo Hold shift and press a key:
choice /c YN /cs
if %errorlevel%==2 exit/b 100
echo %time% - start
if EXIST "C:\Tutor\Files\Lists\!Name%1!.bat" del "C:\Tutor\Files\Lists\!Name%1!.bat"
for /F "usebackq tokens=1 delims=*" %%A in ("C:\Tutor\Files\Lists\Lists.txt") do (
	if %%A NEQ !Name%1! echo.%%A>>"C:\Tutor\Files\Lists\Replace.txt"
)
(
type "C:\Tutor\Files\Lists\Replace.txt"
)>"C:\Tutor\Files\Lists\Lists.txt"
del "C:\Tutor\Files\Lists\Replace.txt"
if EXIST "C:\Tutor\Files\Lists\!Name%1!.bat" (
	echo ERROR#004 - Failed to delete "!Name%1!".
	echo Press 1 to retry
	choice /c 12 /n
	if !errorlevel!==1 goto:Delete %1
) else (
	<"C:\Tutor\Files\Lists\recent.txt" set/p recent=
	if "!Name%1!"=="!recent!" echo.%blank%>"C:\Tutor\Files\Lists\recent.txt"
)
echo %time% - end
pause
exit/b 50

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:Edit
set Flines=0
set/a setNum=%1
call "C:\Tutor\Files\Lists\!Name%1!.bat"
for /f "usebackq" %%A in ("C:\Tutor\Files\Lists\!Name%1!.bat") do (
	set/a Flines+=1
)
set/a questions=%Flines%/2
set num=1

:: UI Action
:Qselect
cls
echo [?25lpress left and right to navigate. Press enter to change
echo.
echo Question:
echo !q%num%!
echo.
echo Answer:
echo !a%num%!
echo.
echo %num%/%questions%
getinput
:: Left
if %errorlevel%==295 (if %num% LSS %Questions% set/a num+=1)
:: Right
if %errorlevel%==293 (if %num% NEQ 1 set/a num-=1)
:: Enter
if %errorlevel%==13 call:Qchanger !setNum!
:: Escape
if %errorlevel%==27 exit/b 100
goto:Qselect

:Qchanger
echo [?25h
cls
echo Press enter while empty to keep the same
echo Question (old):
echo !q%num%!
echo Question (new):
set "tempQ= "
set/p tempQ=
cls
echo Press enter while empty to keep the same
echo Question:
if "!tempQ!"==" " (echo !q%num%!) else echo !tempQ!
echo Answer (old):
echo !a%num%!
echo Answer (new):
set "tempA= "
set/p tempA=

if NOT "!tempQ!"==" " (
	set string=!tempQ!
	call:escSpecialChars
	echo !string!
	set "q%num%=!string!"
)
if NOT "!tempA!"==" " (
	set string=!tempA!
	call:escSpecialChars
	echo !string!
	set "a%num%=!string!"
)
(type "C:\Tutor\Files\Lists\!Name%1!.bat")>"C:\Tutor\Files\Lists\temp.txt"
del "C:\Tutor\Files\Lists\!Name%1!.bat" > nul
for /L %%A in (1, 1, %questions%) do (
	echo set "q%%A=!q%%A!">>"C:\Tutor\Files\Lists\!Name%1!.bat"
	echo set "a%%A=!a%%A!">>"C:\Tutor\Files\Lists\!Name%1!.bat"
)
call "C:\Tutor\Files\Lists\!Name%1!.bat" & exit/b 100
