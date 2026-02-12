# Spending Report Generator

## Quick Start

1. **Extract this folder** to your computer
2. **Copy your bank statements** (CSV or PDF files) to a folder
3. **Run this command** (in Terminal on macOS/Linux or Command Prompt on Windows):

```
./Spending_Report_Generator
```

Or just **double-click** the `Spending_Report_Generator` file

## What You Need

- Your bank/credit card statements as CSV or PDF files
- That's it! No Python required - everything is included

## First Time Running?

The script will ask you:

1. **Directory path** - Where are your statement files? (~/ Desktop/statements)
2. **Files to process** - Press Enter for all, or enter specific file numbers
3. **Month** - Which month to report on? (MM/YYYY format, e.g., 01/2026)
4. **Send email?** - Optional: send the report via email

## Output

You'll get:
- Spending summary by category
- List of large transactions (over $200)
- Excel file with all details

The Excel file is saved in the **current directory**.

## Optional: Gmail Email Setup

To email reports directly from the app:

1. Go to: https://console.cloud.google.com/
2. Create OAuth credentials (Desktop app type)
3. Download JSON file as `credentials.json`
4. Save it in this same folder
5. Run the app and select Gmail OAuth2 when prompted

## Troubleshooting

### "Permission denied" on macOS/Linux?

Run this command first:
```bash
chmod +x Spending_Report_Generator
```

Then try again.

### "Directory not found"?

Use the full path:
- macOS: `/Users/yourname/Documents/statements`
- Windows: `C:\Users\yourname\Documents\statements`
- Linux: `/home/username/statements`

### "No CSV or PDF files found"?

Make sure:
- Your files have `.csv` or `.pdf` extension
- You're pointing to the correct folder
- Files are actually bank statements

## Privacy

Your data stays on your computer. The app only:
- Reads your statement files
- Generates reports locally
- Optionally sends via your email (if you choose)

Enjoy your spending insights!
