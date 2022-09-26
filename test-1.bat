rem Made By Ethan PP Cutting - 100942775
@echo off
:start
rem Making the Menu
echo ****************Menu:****************
echo *1.Add VeraCrypt.exe                *
echo *2.Show VeraCrypt path              *
echo *3.Return to Shell                  *
echo *4.Show 100942775.txt in Z Volume   *
echo *5.Mount                            *
echo *6.Dismount                         *
echo *7.Make a Continer.vc               *
echo *************************************
rem setting the choice action
set /p ch=Enter your choice(1-8):
if %ch%==1 goto search
if %ch%==2 goto showme
if %ch%==3 goto exit
if %ch%==4 goto exist
if %ch%==5 goto mount
if %ch%==6 goto dismount
if %ch%==7 goto Continer
rem 
goto start
:search
set current="%cd%"
c:
cd \
dir /s /b VeraCrypt.exe > %TEMP%\temp.txt 
set /p VeraCrypt= < %TEMP%\temp.txt 
del %TEMP%\temp.txt 
cd "%current%" 
goto start 
:showme
echo Path is %VeraCrypt% 
goto start
:exit
pause
goto loop
:exist
if exist Z:\100942775.txt notepad z:\100942775.txt
goto start
:mount
"C:\Apps\VeraCrypt.exe" /volume "C:\Apps\mycontainer.vc" /letter Z /password 100942775 /quit /silent
goto start
:dismount
"C:\Apps\VeraCrypt.exe" /dismount z /quit /silent /force
:Continer
"C:\Apps\VeraCrypt Format.exe" /create "C:\Apps\100942775.vc" /size "100M" /password 100942775 /encryption AES /hash sha-512 /filesystem exfat /pim 0 /silent
goto start




Finally, create a shortcut which runs the script file. See the video on how it should behave in the Assignment 2 part of Canvas


Make a video of screen caps of your working script, and pack it in a doc (if pictures) or zip file (doc + video) with your script and a README file explaining how it works and any other info needed to test it. 
The password you use must be your student number (so that I can test it too)


To really show off, add a menu to your script which allows the user to set the password variable and the veracrypt path variable. You could use the where command to automate this. 


