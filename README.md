# Dibby Marketplace

Professional marketplace inspection and delivery service platform.

## Features

- Browse listings from Facebook Marketplace, Craigslist, and OfferUp
- Professional inspection services ($49)
- Secure delivery services ($75)
- Tour companion services for safe transactions
- City-specific marketplace pages
- Advanced filtering and search

## Tech Stack

- React 18
- TypeScript
- Supabase
- React Scripts
- Lucide Icons
- EmailJS

## Getting Started

### Prerequisites

- Node.js 14+ and npm

### Installation

```bash
# Install dependencies
npm install

# Start development server
npm start

# Build for production
npm run build
```

### Environment Variables

Create a `.env` file in the root directory:

```
REACT_APP_SUPABASE_URL=your_supabase_url
REACT_APP_SUPABASE_ANON_KEY=your_supabase_anon_key
REACT_APP_EMAILJS_SERVICE_ID=your_emailjs_service_id
REACT_APP_EMAILJS_TEMPLATE_ID=your_emailjs_template_id
REACT_APP_EMAILJS_PUBLIC_KEY=your_emailjs_public_key
```

## Deployment

This project is configured for deployment on Vercel:

1. Connect your GitHub repository to Vercel
2. Set Framework Preset to "Create React App"
3. Add environment variables in Vercel dashboard
4. Deploy!

## License

Proprietary - All rights reserved
