# Directory Site Setup

How GeorgiaDroneFinder.com gets built and put online.

## Where the code lives

All site code goes in **`repos/`**, one folder per website, each its own Git repository:

```
drone-roof-inspections/
├── repos/
│   └── georgiadronefinder/    ← directory site code (Astro project, Git repo)
│       (later: georgiadroneimaging/ for my business site)
├── site/                      ← planning notes only (PLAN.md, SETUP.md)
└── research/data/             ← source data, copied into the site repo when building
```

Keeping code in `repos/` separate from notes means the Git repository (and what gets published) contains only the website, not research files or personal notes.

## How it works

1. **Data files** hold the facts: counties, cities, distances, storm counts, and provider listings (spreadsheet-style CSV/JSON files).
2. **Page templates** describe what a county page, city page, or provider page looks like.
3. **Astro** (a free site builder) combines the two and generates every page automatically. One county template + 159 counties = 159 county pages.
4. **A free host** puts the finished pages online at the domain.
5. **A form service** receives quote requests and emails them to me.

Adding a new city or provider means adding a row to a data file, not building a page by hand.

## Why Node.js?

Node.js is only used **on my computer** to run Astro, which builds the pages. The live website is plain HTML files. Visitors never need Node.js, and the host doesn't run it.

Think of it like a printing press: Node.js and Astro "print" the pages once, and the finished pages are what people see.

**Alternatives:**

| Tool | Needs Node.js? | Notes |
|------|----------------|-------|
| **Astro** (chosen) | Yes | Very fast pages, great for phones, flexible, large community |
| **Hugo** | No (single program) | Also fast and free. Templates are harder to read and customize |
| **WordPress** | No (uses PHP and a database) | Needs paid hosting, slower, more upkeep |
| **No-code builders** | No | Monthly fees, harder to generate hundreds of pages |

## What's needed

| Item | What it is | Cost | Status |
|------|-----------|------|--------|
| Git | Saves versions of the site and sends it to the host | Free | Installed |
| Node.js (LTS) | Runs Astro on my computer | Free | **Not installed** |
| Astro | Builds the pages | Free | To set up |
| GitHub account | Stores the site code online; the host pulls from it | Free | To create |
| Cloudflare Pages (or Netlify) | Hosts the site | Free for this size | To create |
| Domain | GeorgiaDroneFinder.com | ~$10–$12/yr | To register |
| Form service (Web3Forms, Formspree, or Netlify Forms) | Emails me each quote request | Free tier | To choose |
| Google Search Console | Tells Google about the site, shows search rankings | Free | After launch |
| Analytics (Cloudflare Web Analytics or Plausible) | Visitor counts | Free / ~$9/mo | After launch |

**Total to start: about $10–$12 a year** for the domain.

## Steps

### Step 1: Install Node.js
- Install the LTS version (can be done with `winget install OpenJS.NodeJS.LTS`, or download from [nodejs.org](https://nodejs.org/))
- Restart the editor afterward so it's recognized

### Step 2: Create the Astro project
- Set up Astro inside `repos/georgiadronefinder/` and make it a Git repository
- Add a simple, fast, mobile-friendly design

### Step 3: Load the data
- Convert `research/data/counties-within-radius.csv` and `places-within-radius.csv` into site data
- Start with the 12 counties within 35 miles of Dacula and their cities
- Add hail and storm counts per county (NOAA data)
- Add services list (roof, storm, real estate, vacation rentals, construction)
- Create a providers file (my business first, then others)

### Step 4: Build page templates
- Home page with search by city, county, or ZIP
- County page
- City page
- Service page
- Provider profile page
- Quote request form
- Guides (articles)
- About / How this site works / Disclosure
- "For drone pilots" page with email signup

### Step 5: Preview on my computer
- Run the site locally and review every page type
- Fix wording (documentation, not inspection), layout, and content

### Step 6: Register accounts and the domain
- Create a GitHub account and a private repository for the site
- Create a Cloudflare account
- Register GeorgiaDroneFinder.com (Cloudflare Registrar sells at cost; Porkbun and Namecheap are also good)
- Optionally register GeorgiaDroneNearMe.com and point it to the main site

### Step 7: Put it online
- Connect the GitHub repository to Cloudflare Pages
- Every saved change automatically rebuilds and updates the live site
- Connect the domain and turn on HTTPS (automatic)

### Step 8: Connect the quote form
- Sign up for the form service and connect it to the quote form
- Test that requests arrive by email

### Step 9: Tell Google
- Add the site to Google Search Console
- Submit the sitemap (Astro generates it)
- Set up analytics

### Step 10: Grow
- Add counties, cities, providers, and guides in batches
- Track which pages bring leads

## What I do vs. what the AI assistant does

| I do | The assistant does |
|------|--------------------|
| Install Node.js (or approve the install) | Set up Astro and the project files |
| Create GitHub and Cloudflare accounts | Build page templates and design |
| Register the domain | Convert research data into site data |
| Review pages and wording | Generate county and city pages |
| Sign up for the form service | Write first drafts of page content and guides |
| Gather and verify provider info | Connect the form, sitemap, and SEO basics |
