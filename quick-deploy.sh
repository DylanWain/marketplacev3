#!/bin/bash

echo "🚀 Dibby Marketplace - Quick Deploy Script"
echo "=========================================="
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git initialized"
else
    echo "✅ Git already initialized"
fi

echo ""
echo "📝 Adding files to Git..."
git add .

echo ""
echo "💾 Creating initial commit..."
git commit -m "Initial commit - Dibby Marketplace organized structure"

echo ""
echo "🌐 Next steps:"
echo "1. Create a new repository on GitHub: https://github.com/new"
echo "2. Name it: dibby-marketplace"
echo "3. Run these commands:"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/dibby-marketplace.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "4. Then deploy to Vercel: https://vercel.com"
echo ""
echo "📖 See DEPLOYMENT.md for detailed instructions"
