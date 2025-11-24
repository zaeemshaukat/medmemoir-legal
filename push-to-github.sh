#!/bin/bash

# Script to push MedMemoir legal documentation to GitHub
# Run this from your local machine

echo "====================================="
echo "MedMemoir Legal Docs - GitHub Push"
echo "====================================="
echo ""

# Navigate to the legal directory
cd /home/user/workspace/legal

# Check if remote already exists
if git remote | grep -q origin; then
    echo "✓ Remote 'origin' already configured"
else
    echo "Adding remote repository..."
    git remote add origin https://github.com/zaeemshaukat/medmemoir-legal.git
fi

# Display current status
echo ""
echo "Current status:"
git status

# Push to GitHub
echo ""
echo "Pushing to GitHub..."
git push -u origin main

# Check if push was successful
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ SUCCESS! Legal files pushed to GitHub"
    echo ""
    echo "Next steps:"
    echo "1. Go to https://github.com/zaeemshaukat/medmemoir-legal/settings/pages"
    echo "2. Under 'Source', select:"
    echo "   - Branch: main"
    echo "   - Folder: / (root)"
    echo "3. Click 'Save'"
    echo ""
    echo "Your legal pages will be live at:"
    echo "  • https://zaeemshaukat.github.io/medmemoir-legal/"
    echo "  • https://zaeemshaukat.github.io/medmemoir-legal/privacy.html"
    echo "  • https://zaeemshaukat.github.io/medmemoir-legal/terms.html"
    echo ""
else
    echo ""
    echo "❌ Push failed. You may need to authenticate with GitHub."
    echo ""
    echo "If you see authentication errors, try one of these:"
    echo ""
    echo "Option 1: Use GitHub CLI"
    echo "  gh auth login"
    echo "  git push -u origin main"
    echo ""
    echo "Option 2: Use Personal Access Token"
    echo "  1. Go to https://github.com/settings/tokens"
    echo "  2. Generate new token (classic) with 'repo' scope"
    echo "  3. Use token as password when pushing"
    echo ""
    echo "Option 3: Use SSH"
    echo "  git remote set-url origin git@github.com:zaeemshaukat/medmemoir-legal.git"
    echo "  git push -u origin main"
    echo ""
fi
