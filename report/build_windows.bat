@echo off
REM Build script for Spending Report Generator (Windows)
REM Run this on Windows to create the .exe file

echo.
echo ============================================================
echo   Building Spending Report Generator for Windows
echo ============================================================
echo.

REM Check Python
python --version > nul 2>&1
if errorlevel 1 (
    echo Error: Python not installed or not in PATH
    pause
    exit /b 1
)

REM Check generate_reports_email.py exists
if not exist "generate_reports_email.py" (
    echo Error: generate_reports_email.py not found
    pause
    exit /b 1
)

echo Step 1: Creating virtual environment...
python -m venv build_env
call build_env\Scripts\activate.bat

echo Step 2: Installing dependencies...
pip install --upgrade pip -q
pip install -r build-requirements.txt -q

echo Step 3: Building executable...
pyinstaller spending_report.spec --distpath dist --workpath build

if errorlevel 1 (
    echo Error: Build failed
    pause
    exit /b 1
)

REM Copy category_map.csv
copy category_map.csv dist\

echo.
echo ============================================================
echo   ✓ Build Complete!
echo ============================================================
echo.
echo Executable: dist\Spending_Report_Generator\Spending_Report_Generator.exe
echo To run: Double-click the .exe file or run from Command Prompt
echo.
pause
