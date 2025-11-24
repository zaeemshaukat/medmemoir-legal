# MedMemoir Legal Documentation

This directory contains the legal documentation for MedMemoir, including the Privacy Policy and Terms of Service.

## Files

- `index.html` - Landing page with links to all legal documents
- `privacy.html` - Complete Privacy Policy
- `terms.html` - Complete Terms of Service
- `support.html` - Support page with contact information
- `PRIVACY_POLICY.md` - Markdown version of Privacy Policy
- `TERMS_OF_SERVICE.md` - Markdown version of Terms of Service
- `SUPPORT.md` - Markdown version of Support page

## Hosting on GitHub Pages

### Option 1: Use Existing Repository

1. **Copy files to your repository:**
   ```bash
   # If you already have a GitHub repo for MedMemoir
   cp legal/*.html /path/to/your/repo/legal/
   git add legal/
   git commit -m "Add legal documentation"
   git push
   ```

2. **Enable GitHub Pages:**
   - Go to your repository on GitHub
   - Click "Settings" → "Pages"
   - Under "Source", select your branch (usually `main`)
   - Set folder to `/legal` or `/` (depending on your structure)
   - Click "Save"

3. **Access your pages:**
   - Index: `https://yourusername.github.io/repository-name/legal/`
   - Privacy: `https://yourusername.github.io/repository-name/legal/privacy.html`
   - Terms: `https://yourusername.github.io/repository-name/legal/terms.html`
   - Support: `https://yourusername.github.io/repository-name/legal/support.html`

### Option 2: Create New Repository (Recommended for Clean URLs)

1. **Create new repository:**
   - Go to GitHub and create a new repository named `medmemoir-legal` or `legal`
   - Make it public (required for free GitHub Pages)

2. **Push legal files:**
   ```bash
   cd legal
   git init
   git add .
   git commit -m "Initial commit: MedMemoir legal documentation"
   git branch -M main
   git remote add origin https://github.com/yourusername/medmemoir-legal.git
   git push -u origin main
   ```

3. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Select branch: `main`
   - Select folder: `/ (root)`
   - Click "Save"

4. **Your URLs will be:**
   - Index: `https://yourusername.github.io/medmemoir-legal/`
   - Privacy: `https://yourusername.github.io/medmemoir-legal/privacy.html`
   - Terms: `https://yourusername.github.io/medmemoir-legal/terms.html`
   - Support: `https://yourusername.github.io/medmemoir-legal/support.html`

### Option 3: Use Krocess.com Domain (Custom Domain)

If you want URLs like `https://legal.krocess.com` or `https://krocess.com/medmemoir/legal/`:

1. **Set up GitHub Pages as above**

2. **Add custom domain:**
   - In repository Settings → Pages
   - Under "Custom domain", enter your domain
   - Create a `CNAME` file in your repository:
     ```bash
     echo "legal.krocess.com" > CNAME
     git add CNAME
     git commit -m "Add custom domain"
     git push
     ```

3. **Configure DNS:**
   - Add a CNAME record in your domain registrar:
     - Type: `CNAME`
     - Name: `legal` (or `@` for root domain)
     - Value: `yourusername.github.io`

## Updating the App

Once your legal pages are live, update your app to reference them:

### Update app.json

```json
{
  "expo": {
    "ios": {
      "config": {
        "usesNonExemptEncryption": false
      },
      "infoPlist": {
        "NSPrivacyPolicyURL": "https://yourusername.github.io/medmemoir-legal/privacy.html",
        "NSUserTrackingUsageDescription": "See our Privacy Policy for details on data collection."
      }
    },
    "android": {
      "config": {
        "privacyPolicyUrl": "https://yourusername.github.io/medmemoir-legal/privacy.html"
      }
    }
  }
}
```

### Update Settings Screen

Add links to Privacy Policy and Terms in your app's Settings screen:

```typescript
// In SettingsScreen.tsx or similar
<Pressable onPress={() => Linking.openURL('https://yourusername.github.io/medmemoir-legal/privacy.html')}>
  <Text>Privacy Policy</Text>
</Pressable>

<Pressable onPress={() => Linking.openURL('https://yourusername.github.io/medmemoir-legal/terms.html')}>
  <Text>Terms of Service</Text>
</Pressable>
```

## App Store Requirements

### For iOS App Store Submission:

1. **Privacy Policy URL** (Required)
   - Go to App Store Connect
   - Under "App Privacy" → Add your Privacy Policy URL
   - URL: `https://yourusername.github.io/medmemoir-legal/privacy.html`

2. **Terms of Service URL** (Optional but recommended)
   - Add in App Information section
   - URL: `https://yourusername.github.io/medmemoir-legal/terms.html`

### For Google Play Store Submission:

1. **Privacy Policy** (Required)
   - Go to Google Play Console
   - Store presence → Privacy Policy
   - Add URL: `https://yourusername.github.io/medmemoir-legal/privacy.html`

2. **Terms of Service** (Optional)
   - Can be added in app description or as separate link

## Important Notes

1. **Last Updated Date**: The date in all documents is November 24, 2024. Update this when you make changes.

2. **Email Addresses**: Make sure these email addresses are set up:
   - `privacy@krocess.com` - For privacy inquiries
   - `legal@krocess.com` - For legal matters
   - `hello@krocess.com` - For general support and inquiries
   - `security@krocess.com` - For security vulnerabilities (recommended)

3. **Regular Updates**: Review and update your legal documents:
   - When you add new features that collect data
   - When you change data handling practices
   - At least annually

4. **User Notifications**: When you update terms:
   - Notify users via in-app notification
   - Send email to all users
   - Update the "Last Updated" date

## Testing

Before going live, test all links:

```bash
# Check that all internal links work
# Open index.html in browser and click all links
open legal/index.html

# Verify external links
# Check that Krocess.com and email links work
```

## Contact

For questions about these legal documents:
- Email: legal@krocess.com
- Website: https://krocess.com

---

**Krocess LLC**
MedMemoir - Your Personal Medical Records Manager
© 2024 Krocess LLC. All rights reserved.
