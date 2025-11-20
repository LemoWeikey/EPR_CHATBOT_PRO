#!/bin/bash

# EPR Chatbot - Deployment Setup Script
# This script prepares your chatbot for Streamlit Cloud deployment

echo "╔══════════════════════════════════════════════════════════════╗"
echo "║                                                              ║"
echo "║     🚀 EPR CHATBOT - DEPLOYMENT SETUP 🚀                    ║"
echo "║                                                              ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""

# Step 1: Check if git is installed
echo "📋 Step 1: Checking prerequisites..."
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi
echo "✅ Git is installed"
echo ""

# Step 2: Initialize git repository
echo "📂 Step 2: Initializing Git repository..."
if [ -d ".git" ]; then
    echo "⚠️  Git repository already exists"
else
    git init
    echo "✅ Git repository initialized"
fi
echo ""

# Step 3: Check .env is in .gitignore
echo "🔒 Step 3: Checking .gitignore..."
if grep -q "^\.env$" .gitignore; then
    echo "✅ .env is in .gitignore (API keys are safe!)"
else
    echo "⚠️  Adding .env to .gitignore..."
    echo ".env" >> .gitignore
    echo "✅ .env added to .gitignore"
fi
echo ""

# Step 4: Show files to be committed
echo "📄 Step 4: Files ready for commit:"
git status --short
echo ""

# Step 5: Create initial commit
echo "💾 Step 5: Creating initial commit..."
read -p "Do you want to create the initial commit? (y/n): " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    git add .
    git commit -m "Initial commit: EPR Legal Chatbot with eco-friendly UI

- Streamlit chatbot with Vietnamese interface
- Eco-friendly green theme
- RAG-based legal document search
- FAQ retrieval and web search fallback
- Quality control and hallucination detection
- Ready for Streamlit Cloud deployment"
    echo "✅ Initial commit created"
else
    echo "⏭️  Skipped commit creation"
fi
echo ""

# Step 6: Instructions for GitHub
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║                                                              ║"
echo "║     📝 NEXT STEPS - CREATE GITHUB REPOSITORY                ║"
echo "║                                                              ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""
echo "1. Go to: https://github.com/new"
echo "2. Create a new repository:"
echo "   - Name: epr-legal-chatbot"
echo "   - Description: 🌱 EPR Legal Chatbot - Vietnamese Environmental Law"
echo "   - Visibility: Public or Private"
echo "   - DO NOT initialize with README"
echo ""
echo "3. After creating, run these commands:"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/epr-legal-chatbot.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "4. Then visit: https://streamlit.io/cloud"
echo "   - Sign in with GitHub"
echo "   - Click 'New app'"
echo "   - Select your repository"
echo "   - Add secrets (see DEPLOYMENT_GUIDE.md)"
echo "   - Deploy!"
echo ""
echo "📚 Full guide: DEPLOYMENT_GUIDE.md"
echo ""
echo "✅ Setup complete! Follow the steps above to deploy."
