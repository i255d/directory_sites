# Validation Spec: Is This Directory Worth Building?

Status: Draft, October 3, 2026

## 1. Purpose

Before investing serious time in building, find out with real evidence:

1. **Do people search for these services in Georgia?** (demand)
2. **Can a new site realistically rank on page 1 (top 5)?** (difficulty)
3. **Is a visitor worth money, and who pays?** (value)
4. **Are there enough providers to list?** (supply)
5. **Can this become a repeatable template for other states?** (scale)

### Decisions this process produces

| Decision | Meaning |
|----------|---------|
| **Go** | Build the Georgia directory as planned |
| **Pivot** | Demand or value is in a different angle (e.g. roofer lead generation, real estate drone media, a different niche) |
| **No-go** | Not worth building. Move on to another directory idea with lessons learned. |

A second, separate decision: **Is lead generation for roofers a business worth pursuing** (with or without the drone directory)?

### Income goals being tested

| Goal | Monthly | Yearly | Likely needs |
|------|---------|--------|--------------|
| Side income | $3,000–$10,000 | $36,000–$120,000 | Georgia directory + my own drone jobs + some lead sales |
| Larger business | $17,000–$42,000 | $200,000–$500,000 | Multiple income streams and/or multiple states (roofer leads, listings, own jobs with other pilots, course) |

## 2. Rules for this process

- **Free first.** Pay for a tool only if free checks pass and a specific question needs it.
- **Set the pass/fail rules before looking at results**, so the decision isn't swayed by hope.
- **Record everything** in the data files listed in section 6, so the process can be repeated for other states.
- **Separate facts from guesses.** Every estimate is labeled as an assumption until confirmed.

## 3. Resources

| Resource | Use | Cost | Who runs it |
|----------|-----|------|-------------|
| Google autocomplete | What people type (proves a search exists, not how many) | Free | AI assistant |
| Web search tool | Approximate Google results, who ranks | Free | AI assistant |
| Competitor site checks (sitemaps, page counts, domain age, page quality) | How strong the sites on page 1 are | Free | AI assistant |
| Census and NOAA data | Population, storm history by county | Free | AI assistant |
| **Google Keyword Planner** | Search volume ranges and **cost per click (CPC)** | Free (Google Ads account, no ad spend needed) | Me (requires my login) |
| **Google Trends** | Rising, falling, or seasonal interest | Free | Me (or assistant if accessible) |
| **Google search on my phone in Dacula** | Real local results, including the map listings | Free | Me |
| **Similarweb** | Competitor traffic and where it comes from | Free (~15 lookups/day) | Me |
| **Ahrefs free tools** (Keyword Difficulty, Traffic Checker, Backlink Checker) | Difficulty scores, competitor search traffic, competitor links | Free (limited) | Me |
| Ahrefs Lite | Deep dive on competitors' keywords and links | $129 for 1 month, only if needed (Step 7) | Me |
| Conversations with roofers, drone businesses, realtors | Who pays and how much | Free | Me |
| Small Google Ads test | Real cost per inquiry | $100–$300, optional (Step 10) | Me |

## 4. Keyword groups

Three different groups of searchers. Each is checked separately because they lead to different income.

**A. Hiring a drone pilot (directory + my own jobs)**
- drone roof inspection near me / [city] / cost
- drone photography near me / [city] / prices
- drone photographer [city]
- aerial photography [city]
- real estate drone photography [city]
- drone video for Airbnb / VRBO
- construction drone photography Georgia

**B. Roof problems after storms (roofer lead generation)**
- roofers near me / roofer [city]
- roof repair [city] / roof replacement [city]
- hail damage roof repair [city]
- storm damage roof [city]
- roof leak repair near me
- does insurance cover hail damage roof Georgia
- how to tell if my roof has hail damage

**C. Starting a drone business (e-book and course)**
- how to start a drone business / drone roof inspection business
- drone pilot jobs Georgia / drone pilot salary Georgia
- drone pilot license Georgia / Part 107 test Georgia

**Cities for checks:**
- Near Dacula: Dacula, Lawrenceville, Buford, Snellville, Winder, Braselton, Gainesville, Athens, Cumming, Monroe
- Larger: Atlanta, Marietta, Alpharetta, Augusta, Macon, Columbus, Savannah
- Smaller/rural (test the long tail): Jefferson, Commerce, Cornelia, Madison

Group B is expected to be **much more competitive** than Group A (roofers and big lead companies spend heavily on it), but each lead is worth far more.

## 5. Steps (in order)

### Step 1: Demand map from autocomplete
- **Who:** AI assistant
- **Goal:** List the real phrases people type, for all three keyword groups
- **How:** Run Google autocomplete for each seed phrase, alone and with city names
- **Output:** `validation/keywords.csv` (phrase, group, source)
- **Good:** "cost", "near me", "prices", and city names appear as suggestions; Georgia city phrases show up
- **Bad:** Only generic or out-of-state suggestions; city phrases return nothing for most cities
- **Note:** Autocomplete proves a search exists, not how many. It's a starting list for Step 2.

### Step 2: Search volume and value (Keyword Planner)
- **Who:** Me
- **Goal:** How many searches a month, and what businesses pay Google per click
- **How:** Paste the Step 1 list into Keyword Planner, location set to Georgia (and separately to Gwinnett/Atlanta metro)
- **Output:** Add volume range, competition, and top-of-page bid (CPC) to `keywords.csv`
- **Good:**
  - "Near me" and "cost" phrases show 100+ searches/month statewide for Group A
  - Group B shows 1,000+/month statewide with CPC of $10+ (leads are valuable)
  - CPC of $5+ on Group A phrases (businesses pay for these customers)
- **Bad:**
  - Group A core phrases under 10/month statewide
  - CPC under $1 across the board (nobody pays for these visitors)
- **Normal (not bad):** City-level phrases showing 0–10/month. Tools under-count small local searches; the directory adds up hundreds of these.

### Step 3: Trend and season (Google Trends)
- **Who:** Me (or assistant)
- **Goal:** Is interest growing, flat, or shrinking? When are the peaks?
- **How:** Compare "drone roof inspection", "drone photography", "hail damage roof" over 5 years, region Georgia
- **Good:** Flat or rising; clear spring/summer storm peaks (predictable seasons to prepare for)
- **Bad:** Steady decline over 3+ years

### Step 4: Who ranks today (search results analysis)
- **Who:** AI assistant for 20–30 core searches; me for 10 searches on my phone in Dacula
- **Goal:** Can a new site realistically reach the top 5?
- **How:** For each search, record the top 10 results and the map listings: site type (national giant, directory, local business, roofer, news), page quality, whether it's actually about that city
- **Output:** `validation/serp-checks.csv`
- **Good:**
  - 3+ of the top 10 are small local sites, thin pages, or out-of-area results
  - No strong drone directory owns Georgia city searches
  - Results for smaller cities are weak or irrelevant
- **Bad:**
  - Top 5 are Yelp, Angi, HomeAdvisor, Thumbtack, BBB, and Nextdoor for most city searches
  - A strong, well-built Georgia drone directory already ranks across many cities
- **Group B note:** Expect national lead companies and well-funded roofers. If Group B is full of giants, roofer leads may need to come through the drone/storm angle or paid ads instead of competing head-on in SEO.

### Step 5: Competitor sizing
- **Who:** AI assistant (site checks); me (Similarweb and Ahrefs Traffic Checker)
- **Goal:** How big and strong the sites in the top 5 are
- **How:** For the top 10 recurring competitors from Step 4: page count, domain age, content quality, estimated traffic, traffic from search, number of linking websites
- **Output:** `validation/competitors.csv`
- **Good:**
  - Top-ranking sites are small (under ~50 pages) or under ~20 linking websites
  - A competitor directory gets meaningful search traffic (proves demand) but has clear weaknesses (thin pages, no Georgia depth)
- **Bad:**
  - Top sites have hundreds of linking websites and thousands of quality pages
  - Similarweb and Ahrefs show near-zero traffic for every competitor, including directories (may mean low demand; cross-check with Step 2)
- **Note:** Similarweb often shows "not enough data" for small sites. That means traffic is low, not that the tool failed.

### Step 6: Difficulty scores
- **Who:** Me (Ahrefs free Keyword Difficulty Checker)
- **Goal:** A difficulty score for the 20–30 most important phrases
- **Output:** Add KD to `keywords.csv`
- **Good:** Most Group A phrases under 20; some valuable phrases under 10
- **Workable:** 20–35, with a plan to earn links
- **Bad:** Most core phrases over 40
- **Note:** KD only counts links. Combine it with Step 4 (who is actually ranking).

### Step 7: Choose the bounty site (and decide on Ahrefs Lite)
- **Who:** Me and AI assistant
- **Goal:** Pick one successful, beatable site to study and outdo
- **How:** From Steps 4–6, pick the site with real traffic but obvious weaknesses. Record its top pages, keywords, and what it does well and badly.
- **Output:** `validation/bounty-site.md`
- **Buy one month of Ahrefs Lite only if:** Steps 2–6 look promising AND there are specific questions only it can answer (e.g. the bounty site's full keyword list and links). Prepare the list first, do the work in one sitting, then cancel.

### Step 8: Talk to the people who pay
- **Who:** Me
- **Goal:** Confirm who will pay, for what, and how much
- **Who to talk to:**
  - 5–10 roofers (starting with next week's meeting; see [roofer-meeting-prep.md](roofer-meeting-prep.md))
  - 5–10 drone businesses in Georgia
  - 3–5 realtors and 1–2 property managers or HOAs
- **Output:** `validation/interviews.md`
- **Good:**
  - Roofers already pay for leads (Angi, HomeAdvisor, Google Local Services Ads, door knockers) and would pay me a specific amount
  - 3+ of 10 drone businesses would pay for a featured listing or leads
  - Realtors say they'd hire a drone pilot found through the site
- **Bad:**
  - Everyone gets enough work from referrals and won't pay anything
  - Interest only at "free"

### Step 9: Income model
- **Who:** AI assistant builds it; me to fill in real numbers from Steps 2 and 8
- **Goal:** Work backward from income goals to the traffic and leads needed
- **How:** For each income stream (own drone jobs, roofer leads, drone business listings, e-book/course), estimate: value per sale, inquiry rate, close rate, visitors needed
- **Output:** `validation/income-model.md` (or spreadsheet)
- **Good:** The traffic needed for $3,000–$10,000/month is within the demand found in Step 2, with keywords that are winnable per Steps 4–6
- **Bad:** The goal requires far more traffic than exists, or depends on keywords dominated by giants

### Step 10: Optional real-world test
- **Who:** Me
- **Goal:** Real cost per inquiry and real interest, before months of SEO
- **How:** One simple landing page + $100–$300 in Google Ads for 2–3 Group A or B phrases in Gwinnett and nearby counties. Or: a roofer funds the test in exchange for the leads.
- **Good:** Inquiries cost less than they're worth (e.g. a drone job inquiry under ~$30; a roof inquiry under what roofers pay elsewhere)
- **Bad:** Clicks but no inquiries, or inquiries cost more than they're worth

### Step 11: Multi-state template check (light version)
- **Who:** AI assistant + me
- **Goal:** Will this model work in other states?
- **How:** Repeat Steps 1, 4, and a few Step 2 checks for 2 other states (e.g. Texas and North Carolina, both storm-heavy and growing)
- **Good:** Similar or better results; weak competition repeats
- **Bad:** Georgia is an exception and other states are locked up

### Step 12: Decision
- **Who:** Me
- **How:** Fill in the scorecard (section 7) and decide Go, Pivot, or No-go
- **Output:** `validation/decision.md`

## 6. Data files

All in `research/validation/`:

| File | Contents |
|------|----------|
| `keywords.csv` | Phrase, group, city, autocomplete (Y/N), volume range, CPC, KD, notes |
| `serp-checks.csv` | Search phrase, position, URL, site type, local?, quality notes, map pack businesses |
| `competitors.csv` | Domain, type, page count, domain age, est. monthly visits, % from search, linking sites, strengths, weaknesses |
| `bounty-site.md` | Chosen site, why, top pages, keywords, weaknesses, plan to beat it |
| `interviews.md` | Who, date, what they pay now, what they'd pay me, quotes, follow-up |
| `income-model.md` | Income streams, assumptions, traffic needed |
| `decision.md` | Scorecard and final decision |

## 7. Scorecard (fill in at Step 12)

Score each 1 (bad) to 5 (great):

| Factor | Evidence from | Score |
|--------|---------------|-------|
| Search demand (Group A) | Steps 1–2 | |
| Search demand (Group B) | Steps 1–2 | |
| Value per visitor (CPC, job values) | Steps 2, 8 | |
| Rankability (who ranks, KD) | Steps 4–6 | |
| Competitor weakness | Steps 4–5, 7 | |
| Trend direction | Step 3 | |
| Buyers willing to pay | Step 8 | |
| Income model works | Step 9 | |
| Repeatable in other states | Step 11 | |
| Fit with my own drone business | All | |

- **38–50:** Go
- **28–37:** Go with a narrower or different angle (Pivot)
- **Under 28:** No-go for this niche

## 8. Order and timing

| Week | Steps | Notes |
|------|-------|-------|
| Week 1 | 1 (assistant), 2–3 (me), roofer meeting (Step 8 starts) | Autocomplete list first, so Keyword Planner has input |
| Week 2 | 4–6, more interviews | Phone searches in Dacula; free Ahrefs and Similarweb lookups |
| Week 3 | 7, 9, optional 10 | Decide on Ahrefs Lite; build income model |
| Week 4 | 11, 12 | Template check and decision |

Steps 1–6 can overlap with interviews. Interviews often change which keywords matter, so revisit the keyword list after each one.
