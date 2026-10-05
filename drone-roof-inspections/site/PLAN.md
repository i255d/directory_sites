# Directory Site Plan

## Goals (in order)

1. **Bring in leads for my own drone work** within 150 miles of Dacula, GA
2. **Rank in Google** for "drone roof [city/county] GA" style searches across Georgia
3. **Build a list of providers** that could later pay for featured listings or leads
4. **Collect emails** from aspiring drone pilots for the future e-book and course

---

## Part 1: Validate before building (using the tools in my notes)

This step answers: *Is there enough search demand, and can a new site realistically rank?*

Full step-by-step spec: [research/validation-spec.md](../research/validation-spec.md). Roofer meeting prep: [research/roofer-meeting-prep.md](../research/roofer-meeting-prep.md).

### The tools

| Tool | What it's for | Cost |
|------|---------------|------|
| [Similarweb](https://www.similarweb.com/website/) | See how much traffic a competitor site gets and **where it comes from** (Google search, direct, social, referrals) | Free: about 15 lookups/day, high-level data. Paid from $125/mo (annual) or $199/mo (monthly). |
| [Ahrefs Website Traffic Checker](https://ahrefs.com/traffic-checker) | Estimate a site's **Google search traffic**, its top pages, and top keywords | Free (limited) |
| [Ahrefs Keyword Difficulty Checker](https://ahrefs.com/keyword-difficulty) | Score 0–100 for how hard a keyword is to rank for | Free |
| [Ahrefs Keyword Generator](https://ahrefs.com/keyword-generator) | Keyword ideas with volume and difficulty | Free (limited) |
| [Ahrefs Lite](https://ahrefs.com/pricing) | Full research: competitors' keywords, backlinks, gaps | **$129/mo**. Buy one month during deep research, then cancel. |
| [Google Keyword Planner](https://ads.google.com/home/tools/keyword-planner/) | Search volume ranges and **cost per click** (what businesses pay Google for the click) | Free with a Google Ads account |
| [Google Trends](https://trends.google.com/) | Is interest rising or falling? Seasonal patterns (storm season) | Free |
| Google search itself | Who actually ranks on page 1 for each city | Free |

Start with the free tools. Only pay for Ahrefs Lite if the free checks look promising.

### How each question in my notes fits in

**Keyword volume: how often is it searched?**
- Use Keyword Planner and the Ahrefs keyword generator.
- Local searches like "drone roof inspection Buford GA" will show **small numbers (0–50/month) or nothing**. That's normal for local terms. Tools underreport small keywords.
- The directory strategy works by adding up **hundreds of small pages**: 106 Georgia counties + 470 places in my radius. 20 searches a month × 500 pages is 10,000 searches.
- Check the bigger terms too: "drone roof inspection near me", "drone roof inspection cost", "roof hail damage photos", "drone real estate photography Atlanta".

**Keyword difficulty: how hard is it to rank?**
- Ahrefs KD is based on how many websites link to the top 10 results. Under 10 is easy, 10–30 is workable, 30+ needs backlinks and time.
- **Why it's not the only thing to look at:**
  - **Who is on page 1?** If it's Yelp, Angi, Thumbtack, and HomeAdvisor, it's hard even if KD looks low. If it's small local business sites with thin pages, it's beatable.
  - **The Google Map Pack.** For local searches, the map listings at the top take many clicks. My own business needs a **Google Business Profile** to show up there, separate from the directory.
  - **Search intent.** Is the searcher hiring someone, or just curious? Hiring searches are worth more.
  - **Cost per click.** A high CPC (e.g. $5–$20) means businesses pay for these customers, so the traffic is valuable even at low volume.
  - **AI answers.** Google's AI Overviews and ChatGPT answer some questions directly. Service-hiring searches are less affected than "what is" questions.
  - **Content quality on page 1.** Old, thin, or generic pages are easy to beat with better local pages.

**Asymmetric bets: small cost, big possible upside**
- The whole project is one: a domain and hosting cost very little, and the upside is leads for my own jobs plus a future e-book and course.
- Look for keywords that are:
  - **Low difficulty + decent volume + high CPC** (the sweet spot)
  - In **counties with lots of hail but few drone providers** (Coweta, Bartow, Hall, Jackson, Walton, Barrow)
  - **Ignored by the big directories** (e.g. "pre-storm roof photos", "VRBO drone video Blue Ridge", "Lake Lanier drone photography")
- Avoid bets where the downside is big (e.g. paying for expensive tools or ads before validating).

**The "bounty": a site I'm going after to beat**
- Find a small, **mom-and-pop style site that already succeeds** in this niche. It proves traffic and money exist, and shows what to do better.
- Candidates to check in Similarweb and Ahrefs:
  - [AeriScout](https://aeriscout.com/): inspection-focused drone directory, ~370 listings
  - [FlyService.ai](https://www.flyservice.ai/): drone service directory, ~535 listings
  - [Find a Drone Pilot](https://findadronepilot.com/): state-based pilot directory
  - Local Georgia drone businesses that rank for city searches (Atlanta Aerial, One Sol Aerial, NADAR)
  - Possibly a successful directory in a similar local-service niche, as a model
- For the chosen bounty, write down:
  - Monthly traffic and how much comes from Google
  - Its top pages and the keywords they rank for
  - How its pages are built (titles, content, listings, photos, FAQs)
  - What's weak (thin pages, missing cities, no Georgia depth, outdated info)
- Then build **better versions of their best pages** for Georgia.

**"You can be in the top 5 and still do well"**
- I don't need #1. Positions 1–5 get most clicks.
- With hundreds of city and county pages, many pages ranking #3–#5 adds up to steady traffic.
- Set the goal as **top 5 for local pages**, not #1 for big national terms.

### Validation checklist

- [ ] Similarweb: check traffic and traffic sources for AeriScout, FlyService.ai, Find a Drone Pilot, Droners.io
- [ ] Ahrefs traffic checker: top pages and keywords for the same sites
- [ ] Pick one **bounty site** and document it in `research/bounty-site.md`
- [ ] Ahrefs KD checker: 20–30 main keywords (list in `research/competition-and-keywords.md`)
- [ ] Keyword Planner: volume and CPC for Georgia city keywords, and "near me" keywords
- [ ] Google Trends: "drone roof inspection" and "hail damage" in Georgia (seasonality)
- [ ] Google 10 city searches near Dacula (Buford, Lawrenceville, Winder, Gainesville, Athens, Braselton, Jefferson, Monroe, Cumming, Snellville) and note who ranks in the top 5 and the map pack
- [ ] Count drone providers in Google Maps for 10 counties
- [ ] Fill in the viability scorecard in `research/competition-and-keywords.md`
- [ ] **Go / no-go decision**

---

## Part 2: Site design

### Name and domain

Avoid "inspection" in the brand name. Using the search term in page titles is fine where needed. Prefer a short `.com` that isn't tied to roofs only.

Shortlist with availability checks: [research/name-ideas.md](../research/name-ideas.md). Leading pairing: **GeorgiaDroneImaging.com** (my business) with **GeorgiaDronePilots.com** or **GeorgiaAerialPros.com** (directory).

### Site structure

```
Home
├── Find a provider (search by city, county, or ZIP)
├── Georgia
│   ├── Counties (159 pages; start with the 106 in my radius)
│   │   └── e.g. /georgia/gwinnett-county/
│   └── Cities and towns (start with ~100 near Dacula, grow to 470+)
│       └── e.g. /georgia/dacula/
├── Services
│   ├── Roof documentation
│   ├── Storm and hail documentation
│   ├── Pre-storm baseline photos
│   ├── Real estate and land
│   ├── Vacation rentals
│   ├── Construction progress
│   └── HOA and property management
├── Provider profiles (one page per business)
├── Request a quote (lead form)
├── Guides (articles)
│   ├── What does drone roof documentation cost in Georgia?
│   ├── What to do after a hail storm in Georgia
│   ├── Drone documentation vs. roof inspection: what's the difference?
│   └── Georgia hail map and storm history by county
├── For drone pilots
│   ├── Get listed (free)
│   ├── Start a drone documentation business (email signup for the free guide)
│   └── Later: e-book and course
└── About / How this site works / Disclosure (I operate the site and also provide services)
```

### What each county and city page includes

- Headline: "Drone Roof Documentation in [City], GA"
- Short intro with local details (county, nearby towns)
- **Local storm history** (hail events from NOAA data for that county)
- Providers serving that area, with my business listed honestly
- Services available
- Typical price range
- Quote request form
- FAQ (local questions)
- Links to nearby cities and the county page

These pages need real local information, not copy-and-paste text with the city name swapped. Google penalizes thin, repeated pages.

### Mobile-first design

Most visitors will be on phones: homeowners standing in the yard after a storm, realtors between showings, roofers on job sites. Google also ranks sites based on their mobile version. So the site is designed for phones first, then scaled up for computers.

- **Tap to call and tap to text** buttons on every provider listing and page
- **Big, thumb-friendly buttons** and readable text without zooming
- **Short quote form:** name, phone, address or ZIP, service, optional photo upload
- **Fast loading** on weak cell signals: small images, very little JavaScript (Astro's strength)
- **"Use my location"** option to find nearby providers
- **Sticky "Get a Quote" button** at the bottom of the screen
- **Simple menu** and search by city or ZIP at the top
- **Test on real phones** (iPhone and Android) and with Google's PageSpeed Insights before launch

### Listing fields

- Business name, logo, photos
- City, county, service radius
- FAA Part 107 certified (provider states it; verified on request)
- Liability insurance (yes/no, amount)
- Services offered
- Equipment (thermal, mapping)
- Turnaround time
- Price range
- Contact info, website, Google reviews link
- Sample work
- "Claimed" badge (provider has verified the listing)

### Where listing data comes from

- Google Maps searches ("drone service", "aerial photography", "drone roof" per county)
- Competitor directories (as leads to find businesses, not to copy their content)
- Provider websites
- Providers who sign up themselves
- Facebook groups and drone pilot communities in Georgia

### Lead flow

1. Visitor fills out a quote request on a city or county page
2. If the location is within my service area and the service is one I offer → lead comes to me
3. If outside my area → sent to listed providers there (free at first, paid later)
4. Every lead is logged so I can see which pages bring in work

### Tech options (decision needed)

| Option | Good for | Downsides |
|--------|----------|-----------|
| **WordPress + directory plugin** (e.g. GeoDirectory, Directorist) | No coding, lots of plugins, easy editing | Hosting and plugin costs, slower, generating hundreds of local pages is clunky |
| **Static site generator** (e.g. Astro) with my CSV data | Fast, cheap or free hosting, can generate hundreds of county and city pages automatically from the data I already have | Needs code (I can build and maintain it with AI help) |
| **No-code builder** (e.g. Webflow, Softr + Airtable) | Visual editing, quick start | Monthly fees, page limits, harder to generate hundreds of pages |

Leaning toward a **static site generator**, because the county and city lists are already in `research/data/` and pages can be generated from them. Decide before Phase 3 below.

### Monetization by phase

| Phase | Money from |
|-------|------------|
| Launch | My own jobs from leads |
| ~6 months | Affiliate links (Part 107 courses, drones, software), free listings growing |
| ~12 months | Featured listings, paid leads outside my area, free starter guide building an email list |
| Later | E-book, course, expansion beyond my radius and into other states |

---

## Part 3: Full to-do list

### Phase 1: Validate (1–2 weeks)
- [ ] Complete the validation checklist above
- [ ] Choose the bounty site
- [ ] Go / no-go decision

### Phase 2: Business basics (in parallel)
- [ ] Study for and pass FAA Part 107 (free FAA study guide; links in `research/existing-courses-and-books.md`)
- [ ] Research and buy a drone suited to roof and real estate work
- [ ] Practice flying as a recreational flyer before certification (requires the free FAA TRUST test; no paid work until Part 107)
- [ ] Register my drone with the FAA
- [ ] Choose a business name and check the domain is available
- [ ] Form the business (sole proprietor or LLC), get an EIN, open a business bank account
- [ ] Get drone liability insurance
- [ ] Create a Google Business Profile for my own drone business
- [ ] Have a lawyer review disclaimer wording and a basic service agreement

### Phase 3: Build the site foundation
Step-by-step instructions: [SETUP.md](SETUP.md)
- [x] Pick the tech option (Astro static site)
- [ ] Install Node.js
- [ ] Buy the domain
- [ ] Set up hosting
- [ ] Build the page templates: home, county, city, service, provider profile, quote form, guide
- [ ] Write the About / Disclosure page
- [ ] Set up Google Search Console and analytics
- [ ] Set up email collection for aspiring pilots

### Phase 4: Data
- [ ] Narrow the 470 Georgia places to the first ~100 cities near Dacula (use `research/data/places-within-radius.csv`)
- [ ] Add NOAA hail and storm counts per county
- [ ] Gather provider listings for my first 20 counties
- [ ] Add my own business listing

### Phase 5: Content
- [ ] Write county pages for the 12 counties within 35 miles first (Gwinnett, Barrow, Walton, Forsyth, Jackson, Hall, DeKalb, Rockdale, Oconee, Newton, Clarke, Banks)
- [ ] Write city pages for the top 30 cities in those counties
- [ ] Write service pages
- [ ] Write 4–5 guides (cost, after a hail storm, documentation vs. inspection, Georgia hail map)

### Backlinks (start at launch, ongoing)
Full plan: [research/backlinks.md](../research/backlinks.md)

### Phase 6: Launch
- [ ] Launch with the first counties and cities
- [ ] Submit the sitemap to Google Search Console
- [ ] Email every listed provider: "You're listed; claim your free profile"
- [ ] Ask local roofers, realtors, and HOAs for links or partnerships
- [ ] Share in Georgia drone pilot Facebook groups

### Phase 7: Grow (ongoing)
- [ ] Add 10–20 new city pages per week
- [ ] Expand to all 106 counties in my radius, then all 159
- [ ] Track rankings for target pages (goal: top 5)
- [ ] After each big storm, publish a storm update page for affected counties
- [ ] Review which pages bring leads and build more like them
- [ ] Re-check the bounty site every few months
- [ ] Start the free starter guide once I have real jobs to write about

---

## Decisions

- **Tech:** code-based static site that generates county and city pages from the data in `research/data/`.
- **Launch scope:** roofs plus real estate, vacation rentals, and builders.
- **Drone and Part 107:** don't have either yet. Phase 2 must be done before taking paid jobs (the directory can be built in the meantime).
- **Names:** two names, one for the directory and one for my own business. Shortlist in [research/name-ideas.md](../research/name-ideas.md).
- **Rainy-day family spots (later, not on this domain):** “places with a roof when it rains” (indoor playgrounds, rec centers, covered pavilions) is a real search (*things to do when it rains atlanta*, *indoor playground gwinnett*). Keep it off GeorgiaStormRoof — that site is storm/roof leads. Put indoor rec + covered pavilions on the Gwinnett parks/hoops pages instead.

## Open questions

- [ ] Final directory name and domain
- [ ] Final business name and domain
- [ ] Which drone to buy (research needed)
