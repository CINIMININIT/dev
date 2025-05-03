@echo off
setlocal
color 0A
title Terminal AI Assistant

:: Clear screen
cls

:: ASCII Title
echo ##################################################
echo #                                                #
echo #     _______                  _ _               #
echo #    |__   __|                (_) |              #
echo #       | |_ __ __ ___   _____ _| |_ ___  _ __   #
echo #       | | '__/ _` \ \ / / _ \ | __/ _ \| '__|  #
echo #       | | | | (_| |\ V /  __/ | || (_) | |     #
echo #       |_|_|  \__,_| \_/ \___|_|\__\___/|_|     #
echo #                                                #
echo #             TERMINAL AI ASSISTANT              #
echo #                                                #
echo ##################################################
echo.

:: Prompt for user name
set "username=User"
echo Hello! I'm your terminal assistant.
echo What's your name?
set /p username=Name: 
echo.
echo Nice to meet you, %username%!
echo Type "help" to see what I can do.
echo --------------------------------------------------

:loop
echo.
set /p input=%username%: 
set "inputLC=%input%"
set "response="

:: Greeting commands
if /i "%inputLC%"=="hello" set "response=Hey, %username%! What can I help you with?"
if /i "%inputLC%"=="hi" set "response=Hey, %username%! What can I help you with?"

:: Help menu
if /i "%inputLC%"=="help" (
    echo --------------------------------------------------
    echo Here's what I can do:
    echo - hello / hi          : Greet you
    echo - time                : Show current time
    echo - date                : Show today's date
    echo - weather             : Fake weather report
    echo - joke                : Tell a joke
    echo - calc                : Open calculator mode
    echo - shutdown            : Instantly close this window
    echo - bye / exit          : Exit the assistant politely
    echo --------------------------------------------------
    goto loop
)

:: Time
if /i "%inputLC%"=="time" (
    echo The current time is: %time%
    goto loop
)

:: Date
if /i "%inputLC%"=="date" (
    echo Today's date is: %date%
    goto loop
)

:: Weather
if /i "%inputLC%"=="weather" (
    echo Fetching local weather...
    echo It's mostly sunny with a 0%% chance of me being wrong.
    goto loop
)

:: Joke
if /i "%inputLC%"=="joke" (
    set /a pick=%random% %% 3
    if %pick%==0 echo Why did the computer show up late to work? It had a hard drive!
    if %pick%==1 echo I'm reading a book on anti-gravity. It's impossible to put down!
    if %pick%==2 echo Why don’t programmers like nature? It has too many bugs.
    goto loop
)

:: Calculator mode
if /i
