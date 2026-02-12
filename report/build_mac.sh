#!/bin/bash
# Build script for Spending Report Generator (macOS/Linux)
# Creates a standalone executable

echo ""
echo "============================================================"
echo "  Building Spending Report Generator for macOS/Linux"
echo "============================================================"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed"
    exit 1
fi

# Check if in correct directory
if [ ! -f "generate_reports_email.py" ]; then
    echo "Error: generate_reports_email.py not found"
    exit 1
fi

echo "Step 1: Creating virtual environment..."
python3 -m venv build_env
source build_env/bin/activate

echo "Step 2: Installing dependencies..."
pip install --upgrade pip -q
pip install -r build-requirements.txt -q

echo "Step 3: Building executable..."
pyinstaller spending_report.spec --distpath dist --workpath build

if [ $? -ne 0 ]; then
    echo "Error: Build failed"
    exit 1
fi

# Copy category_map.csv
cp category_map.csv dist/

echo ""
echo "============================================================"
echo "  ✓ Build Complete!"
echo "============================================================"
echo ""
echo "Executable: dist/Spending_Report_Generator"
echo "To run: ./dist/Spending_Report_Generator"
echo ""
