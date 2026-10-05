# Validation Findings (running log)

Spec: [../validation-spec.md](../validation-spec.md)

## Status

| Step | Status | Who |
|------|--------|-----|
| 1. Autocomplete demand map | **Done** (Oct 3) | Assistant |
| 2. Keyword Planner volumes and CPC | **Done** (Oct 3, Georgia, ranges) | Me |
| 3. Google Trends | Not started | Me |
| 4. Who ranks | **First pass done** (9 searches, web search tool). Needs my phone checks in Dacula, including map listings | Assistant + me |
| 5. Competitor sizing | **Partly done** (page counts, domain ages). Needs Similarweb/Ahrefs traffic and links | Assistant + me |
| 6–12 | Not started | |

## Step 1: Autocomplete (what people type)

Files: `Get-Autocomplete.ps1`, `autocomplete-raw.csv`, `autocomplete-seeds.csv`, `autocomplete-pass2.csv`, `keywords.csv` (534 on-topic phrases).

| Search pattern | Georgia cities with a suggestion (of 21) |
|----------------|-------------------------------------------|
| roofers {city} | 20 |
| roof repair {city} | 18 |
| aerial photography {city} | 6 (mostly Atlanta, Augusta, Savannah) |
| drone photography / photographer {city} | 5 |
| drone roof inspection {city} | **0** |
| real estate drone photography {city} | **0** |
| storm damage roof {city} / hail damage roof {city} | 0 |

**Good signals**
- National "near me" phrases are strong for Group A: *drone photography near me prices*, *drone services near me*, *drone roof inspection cost near me*, *hire a drone pilot near me*, *real estate drone photography pricing*.
- Atlanta has real drone searches: *drone photography atlanta*, *drone services atlanta*, *drone company atlanta*, *drone video atlanta*, *drone pilot atlanta*.
- Group B (roofers) has suggestions in almost every city, including Dacula, Winder, Buford and Lawrenceville. Roofer names show up in suggestions too (Accent, Kellogg, Encore, Universal), so homeowners search for specific roofers.
- Group C has Georgia-specific phrases: *drone pilot jobs georgia/atlanta/savannah/augusta*, *drone pilot license georgia*, *drone laws georgia*.

**Bad / caution signals**
- "Drone roof inspection" + any Georgia city gets **no** suggestions, including Atlanta. People search this phrase nationally or with "near me", not with city names.
- Small-city drone searches (Buford, Cumming, Marietta, Macon + "drone photography") get nothing. Autocomplete only shows popular phrases, so this means low volume, not zero.
- "Storm/hail damage roof {city}" gets nothing. Storm searches are "near me" or general (*hail damage roof insurance claim*, *free roof inspection after hail storm*).

**What it means:** Demand for drone services is mostly **"near me" searches**, which Google answers based on location. That favors map listings and pages that are clearly local, not just pages with a city name in the title. Searches for roofers by city are everywhere.

## Step 2: Keyword Planner, Georgia (Oct 3)

Files: `keyword-planner-georgia-raw-2026-10-03.csv` (original), `keyword-planner-georgia.csv` (cleaned), volumes merged into `keywords.csv`.

Google shows **ranges** without ad spend: 50 = 10–100/mo, 500 = 100–1K, 5,000 = 1K–10K. Statewide, Georgia, Sep 2024–Aug 2026.

| Group | Biggest phrases (searches/month in Georgia) | Cost per click (top of page) |
|-------|---------------------------------------------|------------------------------|
| **A. Hiring a drone pilot** | *drone photography* 100–1K; *drone laws georgia* 100–1K (info only). Everything else 10–100: drone photography near me, drone services near me, aerial photography near me, drone roof inspection, drone photography atlanta, drone company atlanta, real estate drone photography | **$1–$12** (most $2–$6) |
| **B. Roofers** | *roofers near me* **1K–10K**; 100–1K each: roof inspection near me, free roof inspection near me, roof leak repair near me, storm damage roof repair near me, hail damage roof, **roofers lawrenceville ga** | **$10–$100** (roofers near me $15–$94; free roof inspection near me $32–$80; roofers lawrenceville $18–$89) |
| **C. Starting a drone business** | *drone pilot salary* 100–1K; rest 10–100 | $0–$5 |

**Against the spec's rules:**
- Group A: core "near me" phrases are **10–100/month statewide**, below the "good" bar (100+) but above the "bad" bar (under 10). Click prices are low to medium. **Verdict: small but real.** Statewide, all Group A phrases together are roughly **500–3,000 searches/month**, plus many city phrases too small to measure.
- Group B: **1,000+/month with $10+ clicks. Clearly passes.** Businesses pay $15–$100 for one click, which means a roof lead is worth hundreds of dollars to a roofer.
- Group C: small; better reached through YouTube, Amazon and course platforms than Google.

**What it means:**
- **The money is in Group B.** A single roofer click costs more than 10 drone photography clicks. Roofer lead generation is the strongest income stream found so far.
- A drone-only directory, by itself, is a **small-traffic site** in Georgia: good for my own jobs and a few featured listings, unlikely to reach $3K–$10K/month alone.
- **Likely pivot: a drone + roof storm documentation site** that ranks for the drone/storm angle (easier) and sends homeowners to paying roofers, plus my own drone jobs. Confirm with the roofer meeting (what a lead and a job are worth to him).

### Keyword Planner list 2: realtors, storms, weddings (Oct 3)

Files: `keyword-planner-georgia-raw-2026-10-03-b.csv`, `keyword-planner-georgia-2.csv`.

| Area | 100–1K searches/month in Georgia | Cost per click | Drone-specific phrases |
|------|----------------------------------|----------------|------------------------|
| **Real estate media** | real estate photographer near me; real estate photography near me; real estate photography atlanta | $3–$18 | real estate drone video, land drone video, property drone video: 10–100 |
| **Storm / roof** | storm damage georgia; hail storm atlanta; roof damage from storm; hail damage roofers ($5–$25) | mostly not shown; Low competition | drone roof photos: under 10 |
| **Weddings** | wedding videographer atlanta; wedding videographer near me | $1–$9 | wedding drone videography, drone wedding photography: 10–100 |

**What it means:**
- **Real estate is bigger than the drone phrases suggested**, but the demand is for **full real estate media** (photos + video + drone + 3D tours), not drone alone. If my business offers the full package, there are ~1,500+ searches/month statewide at $3–$18 a click. Drone-only real estate searches stay small.
- **Storm searches are a traffic opportunity.** *storm damage georgia*, *hail storm atlanta*, and *roof damage from storm* are each 100–1K/month with **Low** ad competition. They're news-style searches that spike after storms. Idea: **storm and hail pages for each county** (built from free NOAA storm reports), each offering drone roof documentation and a roofer referral. This attracts homeowners at the exact moment roofers pay the most.
- **Weddings:** couples search for the videographer, not the drone. Confirms: subcontract drone work to wedding videographers; not a directory play.
- Nobody searches "drone roof photos." Homeowners search for the **problem** (storm, hail, damage), not the method. Site wording and page titles should lead with the problem.

## Direction chosen (Oct 3, pending roofer meeting)

- **Directory:** GeorgiaStormRoof.com: storm and roof documentation site for Georgia homeowners; income from roofer leads and listings.
- **Side business:** GeorgiaDroneImaging.com: storm-response drone documentation, **$450–$800 minimum** for full-property documentation.
- **Dropped:** real estate photography (a different business).

### Storm searches: who ranks (Oct 3)
- *hail storm atlanta* and *hail map georgia*: **national hail-map companies** (HailStrike, Interactive Hail Maps, HailTrace, WeatherTotals, GeoStat) with automatic pages for every storm and city. They sell storm data to roofers. Hard to beat on "hail map" searches.
- *storm damage georgia*: **local news** (Now Georgia, CBS Atlanta, GPB) plus HurricaneInspections.com, which already publishes automatic NOAA storm pages by state. News searchers are curious, not ready to hire.
- *roof damage from storm Gwinnett*: **roofer blogs** (Dom Roofing, Red Roofing, Total Roof, Platinum). Beatable, but every result is a roofer.
- **Meaning:** automatic storm pages are already done nationally. Our edge has to be local and human: fast local posts after each storm with real drone photos, shared on Facebook/Nextdoor, plus roofer-funded ads. Don't rely on SEO storm pages as the main traffic source.
- Useful fact: Gwinnett has the **3rd most hail events in Georgia** since 1996 (170, GeoStat/NOAA). Around Atlanta, hail is reported on about **8 days a year** (WeatherTotals), so storm work comes in bursts.

## Step 4: Who ranks (first pass)

File: `serp-checks.csv`. This is a web search tool, which approximates Google; it doesn't show map listings or exact local results.

**Good signals**
- **No strong Georgia drone directory owns city searches.** National directories (DroneInvoice, Droners, AeriScout, SolDrones, Drone Pilot Directory) show up only for "directory" searches, with thin Georgia pages (DroneInvoice lists ~10 Georgia pilots, many inactive 200+ days).
- Small, young sites rank in the top 5:
  - **atlaerial.com**: 15 pages, registered Aug 2025, #1 for *drone roof inspection Atlanta*.
  - **agentschoicemedia.com**: registered Nov 2025, #1 for *drone photography Atlanta*.
  - **focuspointaerials.com**: thin, generic text, takes 3 of the top 5 for *drone photography Lawrenceville*.
  - **dronepilotdirectory.com**: an almost-empty listing ranks #4 for *drone photography Winder*.
- **godronevideoproductions.com** ranks in Lawrenceville, Winder, and Gainesville with one templated page per city (323 pages). This proves the city-page approach works here, even done poorly. **Strong bounty site candidate (Step 7).**
- Giants such as Yelp, Thumbtack and Angi did **not** dominate the drone searches checked.

**Bad / caution signals**
- **Roofer searches (Group B) are competitive.** Accent Roofing (37 years, 498 Angi reviews, many city pages), Angi, SERVPRO, and Capital City Roofing (1,146 pages of city content) hold the top spots. A new directory won't outrank them quickly for "roofers {city}".
- Cost searches are owned by programmatic cost-guide sites (roof-cost-guide.com, getclearcost.com).

**What it means so far:** Group A (hiring a drone pilot) looks **rankable** with good city pages. Group B (roofer leads) is better reached through the drone/storm angle, paid ads, or the roofer's own budget than by trying to outrank roofers head-on.

## Step 5: Competitor strength (Ahrefs free tools, Oct 3)

| Site | Domain Rating | Real linking sites | Google traffic (Ahrefs) |
|------|---------------|--------------------|-------------------------|
| godronevideoproductions.com | 2.9 | ~2 | 0 |
| atlaerial.com | 0 | none seen | (pending) |
| focuspointaerials.com | 0 | none seen | (pending) |
| aeriscout.com | 0 | none seen | (pending) |
| droneinvoice.com | 31 | some (drone forums, blogs, pilot websites) | 3 |

- Each site shows 900–1,000 "linking websites", but nearly all are automated spam pages (.shop/.store/.xyz) that hit almost every domain. Google ignores them. **Judge links by who they're from, not the count.**
- **Very good signal:** the sites ranking top 5 in Atlanta, Lawrenceville, Winder and Gainesville have essentially **zero authority**. A new site with good local pages and a few real local links can compete.
- **Caution:** traffic numbers are tiny too. Confirm demand with Keyword Planner (Step 2) before building.
- **Tactic to copy from DroneInvoice:** its strongest links come from pilots linking to their own profile ("View my drone work on DroneInvoice"). Give every listed Georgia pilot a "Featured on [directory]" badge to put on their website. (Already in `../backlinks.md`; this is proof it works.)

### Similarweb (Jun–Aug 2026; PDFs in `similarweb/`)

| Site | Visits/month | From Google search | Notes |
|------|--------------|--------------------|-------|
| godronevideoproductions.com | ~330 | 28% (~90/mo) | 100% US; 5.8 pages/visit, 3.5 min (engaged visitors); dropped 83% last month; top search "drone footage duluth ga" |
| droneinvoice.com | under ~900 | not shown | Whole-US directory; 65% of visits on phones |
| aeriscout.com | ~360 | none | 100% Indonesia = likely bots; real US visitors near zero |

Similarweb is rough at this size, but the picture is consistent:
- **Benchmark:** a weak site with ~300 city pages and no real links gets **~90 visits a month from Google** in this area. A well-built directory should do several times better, but this sets expectations: early traffic will be in the hundreds per month, not thousands.
- **National drone directories get almost no traffic.** There's no proven "big directory" to copy. That means nobody owns this, and also that directory-style searches are small.
- **65% mobile** on DroneInvoice supports the mobile-first design decision.
- Demand question still open: **Keyword Planner (Step 2) decides it.**

## Price data found (useful for income model and the roofer meeting)

| Source | Service | Price |
|--------|---------|-------|
| Agents Choice Media (Marietta) | Drone photos only / photos + video | $199 / $349 (add-on $129 / $259) |
| Corvus (Gwinnett) | 6 or 12 HDR drone photos / video | $175 / $185 / $225 |
| US Home Photo (Winder) | Aerial package | $139 |
| Kapas Media (Atlanta) | Basic aerial session | from $250 |
| Sky Launch (SW Georgia, drone.vet) | Roof imagery / with thermal | $250 / $450 |
| Cost-guide sites | Drone roof inspection in Georgia | $150–$500; thermal $300–$700 |
| Georgia roof replacement (cost guide) | Asphalt roof | $5,000–$12,000 |

Note: many roofers offer **free** inspections, so homeowners won't pay much for roof photos alone. The money in roof documentation is from **roofers, insurance work, realtors, and property managers**, not homeowners.

## Preliminary scorecard (will change with Steps 2, 3, 8)

| Factor | Early read |
|--------|-----------|
| Search demand (Group A) | Low–medium: mostly 10–100/month per phrase statewide |
| Search demand (Group B) | High: roofers near me 1K–10K/month |
| Value per visitor | Group A low ($2–$6/click); Group B very high ($15–$100/click) |
| Rankability (Group A) | Good |
| Rankability (Group B) | Hard by SEO |
| Competitor weakness | Good: no strong Georgia drone directory |

## Similarweb Pro trial (started Oct 3, 2026; cancel by Oct 16)

Export each to CSV/Excel into Downloads:
1. **Keyword Generator** (country: US) for: drone photography, drone roof inspection, drone services, aerial photography, real estate drone photography, drone video, roofers, hail damage roof, roof inspection
2. **Website Keywords** (organic) for: godronevideoproductions.com, agentschoicemedia.com, corvusrmg.com, atlaerial.com, onesolfilmco.com, nadardrone.com, accentroofingservice.com, capitalcityroofing.net
3. **Keyword analysis** for *drone photography near me*, *drone roof inspection near me*, *drone photography atlanta*: which sites get the clicks
4. **Website analysis** for agentschoicemedia.com and nadardrone.com (traffic, channels)

## Next actions

1. **Me:** Keyword Planner with `keyword-planner-list.txt`, location Georgia; then again for Gwinnett County. Add volumes and top-of-page bids to `keywords.csv`.
2. **Me:** On my phone in Dacula, search *drone photography near me*, *drone roof inspection near me*, *roofers near me*, *drone photographer Lawrenceville*, and record the map listings in `serp-checks.csv`.
3. **Me:** Free Ahrefs Traffic Checker and Similarweb on godronevideoproductions.com, atlaerial.com, focuspointaerials.com, droneinvoice.com, aeriscout.com. Add to `competitors.csv`.
4. **Assistant:** Study godronevideoproductions.com as the bounty site candidate; run Step 4 for more cities and services (vacation rental, construction, thermal).
5. **Roofer meeting:** Ask what he pays now per lead and per job won (see `../roofer-meeting-prep.md`). The Group B results above are worth showing him: he's competing with Accent and Capital City for these searches.
