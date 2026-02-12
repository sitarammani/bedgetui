# Spending Report Generator — Email with Gmail OAuth2

This folder contains `generate_reports_email.py` which generates spending reports (CSV/PDF inputs) and can email the report. 

## Quick Start - Using the EXE (Easiest)

**For Windows users:**
1. Double-click `build.bat` to build the executable
2. Navigate to `dist/Spending_Report_Generator/` folder
3. Double-click `Spending_Report_Generator.exe` to run

**For macOS/Linux users:**
```bash
chmod +x build.sh
./build.sh
# Then run: ./dist/Spending_Report_Generator/Spending_Report_Generator
```

The executable includes all dependencies and doesn't require Python to be installed!

## Alternative - Running Python Script Directly

If you prefer running the Python script directly:

1) Install dependencies (use a virtualenv):

```bash
pip install -r requirements.txt
```

2) Run the script:

```bash
cd report
python generate_reports_email.py
```

## Gmail OAuth2 Setup

This is optional but recommended for security:

1) Create Google OAuth client credentials (one-time per user):
- Visit https://console.cloud.google.com/
- Create or select a project and enable the Gmail API
- Create OAuth 2.0 Client ID credentials → Application type: "Desktop app"
- Download the JSON and save it as `credentials.json` in the same folder as the executable or script

2) When prompted:
- When asked to send the report via email, enter `y`.
- When asked "Use Gmail OAuth2 (recommended)?", enter `y`.
- A browser window will open to complete Google sign-in and consent; after that a `token.json` file will be saved for reuse.

## Security Best Practices

⚠️ **IMPORTANT:** Keep your credentials secure!

- **Never commit** `credentials.json` or `token.json` to version control (see `.gitignore`)
- **Passwords are hidden** when entered - they will not appear on screen
- **Keep OAuth tokens private** - anyone with `token.json` can send emails on your behalf
- **Use Gmail OAuth2 (recommended)** instead of storing passwords
- **Use app-specific passwords** if using SMTP (not your main account password)

### If Using SMTP:
- Use an **App Password**, not your main account password
- Never share your email credentials
- For Gmail: [Enable "Less secure app access"](https://support.google.com/accounts/answer/6010255) or use an [App Password](https://support.google.com/accounts/answer/185833)

## Notes

- Each user should create or reuse their own `credentials.json` and will receive their own `token.json` after the OAuth flow.
- If you prefer not to use OAuth, choose `n` to use the SMTP fallback (requires SMTP credentials).
- Keep `credentials.json` and `token.json` private.
- The application validates email addresses and file paths to prevent errors
