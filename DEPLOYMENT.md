# Deployment Guide for Dibby Marketplace

## Quick Setup

### 1. Upload to GitHub

1. **Initialize Git** (if not already done):
   ```bash
   git init
   git add .
   git commit -m "Initial commit - organized structure"
   ```

2. **Create a new repository on GitHub**:
   - Go to https://github.com/new
   - Name it: `dibby-marketplace`
   - Don't add README, .gitignore, or license (we already have them)

3. **Push to GitHub**:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/dibby-marketplace.git
   git branch -M main
   git push -u origin main
   ```

### 2. Deploy to Vercel

#### Option A: Via Vercel Dashboard (Recommended)

1. Go to https://vercel.com and sign in
2. Click "Add New Project"
3. Import your `dibby-marketplace` GitHub repository
4. Configure settings:
   - **Framework Preset**: Create React App (should auto-detect)
   - **Root Directory**: `./` (leave as is)
   - **Build Command**: `npm run build` (auto-filled)
   - **Output Directory**: `build` (auto-filled)
   - **Install Command**: `npm install` (auto-filled)

5. **Add Environment Variables** in Vercel:
   Click "Environment Variables" and add:
   - `REACT_APP_SUPABASE_URL` = `https://jxilnpjbhzskovvffqkk.supabase.co`
   - `REACT_APP_SUPABASE_ANON_KEY` = `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...` (your key)
   - `REACT_APP_EMAILJS_SERVICE_ID` = (your EmailJS service ID)
   - `REACT_APP_EMAILJS_TEMPLATE_ID` = (your EmailJS template ID)
   - `REACT_APP_EMAILJS_PUBLIC_KEY` = (your EmailJS public key)

6. Click **"Deploy"**

7. Wait for build to complete (2-3 minutes)

#### Option B: Via Vercel CLI

```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel

# Follow prompts
# Set up and deploy: Yes
# Which scope: Your account
# Link to existing project: No
# Project name: dibby-marketplace
# Directory: ./
# Override settings: No

# Add environment variables
vercel env add REACT_APP_SUPABASE_URL
vercel env add REACT_APP_SUPABASE_ANON_KEY
# ... (add all env vars)

# Deploy to production
vercel --prod
```

### 3. Connect Custom Domain (dibbytour.com)

1. In Vercel dashboard, go to your project
2. Click **"Settings"** → **"Domains"**
3. Add domain: `dibbytour.com`
4. Add domain: `www.dibbytour.com`
5. Vercel will show DNS records to add
6. Go to your domain registrar (GoDaddy, Namecheap, etc.)
7. Add the DNS records:
   - **A Record**: `@` pointing to Vercel's IP (shown in dashboard)
   - **CNAME**: `www` pointing to `cname.vercel-dns.com`
8. Wait for DNS propagation (can take 1-48 hours, usually under 1 hour)

### 4. Verify Deployment

1. Check your Vercel URL: `https://dibby-marketplace.vercel.app`
2. Once DNS propagates, check: `https://dibbytour.com`
3. Test key features:
   - Homepage loads
   - Search functionality works
   - City pages load
   - Forms submit correctly

## Troubleshooting

### Build Fails with TypeScript Errors

- Make sure all the fixes in this organized version are present
- Check Vercel build logs for specific error messages
- Ensure all dependencies are in package.json

### Environment Variables Not Working

- Make sure they're added in Vercel dashboard under Settings → Environment Variables
- Redeploy after adding environment variables
- Check that variable names match exactly (including REACT_APP_ prefix)

### 404 Errors on Page Refresh

- This should be fixed by the vercel.json rewrites configuration
- If still happening, check that vercel.json is in the root directory

### Custom Domain Not Working

- Check DNS records in your domain registrar
- Use `dig dibbytour.com` or online DNS checker to verify propagation
- Make sure you added both `dibbytour.com` and `www.dibbytour.com` in Vercel

## File Structure

```
dibby-marketplace-organized/
├── public/
│   ├── index.html          # Main HTML file
│   ├── manifest.json       # PWA manifest
│   ├── robots.txt          # SEO robots file
│   └── sitemap.xml         # SEO sitemap
├── src/
│   ├── components/
│   │   └── Marketplace.tsx # Marketplace component
│   ├── lib/
│   │   └── supabase.ts     # Supabase client
│   ├── App.tsx             # Main application (23k+ lines)
│   ├── index.tsx           # Entry point
│   └── styles.css          # Global styles
├── .env.example            # Environment variables template
├── .gitignore              # Git ignore rules
├── package.json            # Dependencies and scripts
├── tsconfig.json           # TypeScript configuration
├── vercel.json             # Vercel deployment config
├── README.md               # Project documentation
└── DEPLOYMENT.md           # This file
```

## Post-Deployment Checklist

- [ ] Site loads at Vercel URL
- [ ] Site loads at dibbytour.com
- [ ] All environment variables are set
- [ ] Search functionality works
- [ ] City pages load correctly
- [ ] Forms submit successfully
- [ ] Images load properly
- [ ] Mobile responsive design works
- [ ] SEO meta tags are present
- [ ] robots.txt is accessible
- [ ] sitemap.xml is accessible

## Updating the Site

To make updates after initial deployment:

```bash
# Make your changes locally
git add .
git commit -m "Description of changes"
git push

# Vercel will automatically deploy the changes
```

## Support

If you encounter issues:
1. Check Vercel deployment logs
2. Check browser console for errors
3. Verify environment variables are set correctly
4. Ensure all dependencies are installed
