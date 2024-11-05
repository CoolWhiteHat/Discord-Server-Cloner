@echo off
set /p answer="Have you installed all the necessary packages? (yes/no): "

if /i "%answer%"=="yes" (
    echo We run the program...
    python main.py
)
if /i "%answer%"=="no" (
    echo We will install all the packages you need
    echo y | pip uninstall discord.py
    echo y | pip uninstall discord
    pip install -r requirements.txt
    echo We run the program...
    python main.py
)
else (
    echo An error occurred
)

pause
