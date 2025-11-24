# MedMemoir Support URL for App Store Submission

## Support URL
Once you upload the legal files to GitHub Pages, use this URL for App Store submission:

**Support URL:** `https://[yourusername].github.io/medmemoir-legal/support.html`

For example, if using the existing username:
`https://zaeemshaukat.github.io/medmemoir-legal/support.html`

---

## All Legal Page URLs

After GitHub Pages setup, you'll have these URLs:

1. **Landing Page:** `https://[yourusername].github.io/medmemoir-legal/`
2. **Privacy Policy:** `https://[yourusername].github.io/medmemoir-legal/privacy.html`
3. **Terms of Service:** `https://[yourusername].github.io/medmemoir-legal/terms.html`
4. **Support Page:** `https://[yourusername].github.io/medmemoir-legal/support.html`

---

## Support Page Features

The support page includes:

- **Primary Contact Email:** hello@krocess.com
- **Common Support Topics:** Account issues, technical support, billing, data/privacy, feature requests, bug reports
- **In-App Support:** Instructions for Pro users to submit feedback through the app
- **Response Time:** 24-48 hours during business days
- **What to Include:** Device info, app version, issue description, steps to reproduce
- **Emergency Disclaimer:** Medical emergency warning
- **Additional Contacts:**
  - Privacy inquiries: privacy@krocess.com
  - Security issues: security@krocess.com
  - Legal matters: legal@krocess.com

---

## How to Upload to GitHub Pages

1. **Get your GitHub token ready** (you mentioned you'll provide this)

2. **Navigate to the legal directory:**
   ```bash
   cd /home/user/workspace/legal
   ```

3. **Initialize git (if not already a repo):**
   ```bash
   git init
   git add .
   git commit -m "Add MedMemoir legal documentation and support page"
   ```

4. **Push to GitHub:**
   ```bash
   # Replace with your actual repository URL
   git remote add origin https://github.com/[yourusername]/medmemoir-legal.git
   git branch -M main
   git push -u origin main
   ```

5. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Select branch: `main`
   - Select folder: `/ (root)`
   - Click Save

6. **Your pages will be live at:**
   - `https://[yourusername].github.io/medmemoir-legal/`

---

## Files Created

### HTML Files (for GitHub Pages hosting):
- `index.html` - Landing page with links to all documents
- `privacy.html` - Privacy Policy
- `terms.html` - Terms of Service
- `support.html` - Support page with contact info

### Markdown Files (for version control):
- `PRIVACY_POLICY.md` - Privacy Policy in markdown
- `TERMS_OF_SERVICE.md` - Terms of Service in markdown
- `SUPPORT.md` - Support page in markdown
- `README.md` - Setup and deployment instructions

---

## App Integration

The support link has already been added to the app in:
- **SettingsScreen.tsx** - Legal section now has three links: Privacy Policy, Terms of Service, and Support

Users can access the support page from:
1. Profile tab → Settings → Legal → Support (opens in browser)
2. Directly via the URL once hosted

---

## Next Steps

1. Provide your GitHub token
2. I'll push the files to the repository
3. Enable GitHub Pages in the repository settings
4. Update the App Store submission with the support URL
5. Test all links to ensure they work correctly

---

## Contact Email Setup

Make sure these email addresses are set up and monitored:
- ✅ `hello@krocess.com` - Primary support email (already configured)
- ✅ `privacy@krocess.com` - Privacy inquiries
- ✅ `legal@krocess.com` - Legal matters
- ⚠️ `security@krocess.com` - Security vulnerabilities (recommended)
