# Windows Build Package

To build the Windows version, copy all files with "build" or "generate" in the name to a Windows computer.

## Files to Copy to Windows

1. `generate_reports_email.py` - Main application
2. `category_map.csv` - Configuration
3. `build-requirements.txt` - Dependencies
4. `spending_report.spec` - Build configuration
5. `build_windows.bat` - Windows build script (DOUBLE-CLICK THIS)

## On Windows Computer

1. Download the 5 files above to a folder
2. Open Command Prompt in that folder
3. Double-click `build_windows.bat`
4. Wait for build to complete (~5-10 minutes)
5. Result: `dist\Spending_Report_Generator.exe` (ready to share!)

## Questions?

See `BUILD_WINDOWS_INSTRUCTIONS.txt` for detailed steps.
