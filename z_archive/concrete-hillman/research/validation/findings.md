# Validation Findings (running log)

Spec: [../validation-spec.md](../validation-spec.md)

## Status

| Step | Status | Who |
|------|--------|-----|
| 1. Autocomplete demand map | **Done** (Oct 4) | Assistant |
| 2. Volume and CPC (Ahrefs / Keyword Planner) | Not started | Me |
| 3. Google Trends | Not started | Me |
| 4. Who ranks | Not started | Assistant + me |
| 5. Competitor sizing (Ahrefs, Similarweb) | Not started | Me |
| 6 to 12 | Not started | |

## Step 1: Autocomplete (Oct 4)

Files: `Get-Autocomplete.ps1`, `autocomplete-raw.csv` (476 suggestions, 421 unique), `autocomplete-seeds.csv` (207 seeds).

Note: the query ran from a Georgia location, so the generic "near me" suggestions show Atlanta. The town-name results are not affected.

### Towns that returned real "concrete {town}" suggestions (of 25)
Seeds per town: concrete {town}, concrete contractor {town}, concrete driveway {town}, concrete patio {town}, concrete {town} mn, concrete slab {town}, garage floor concrete {town}.

| Strength | Towns |
|----------|-------|
| Strong (many suggestions with the town name) | St. Cloud (24), Brainerd (21), Rice (21), Princeton (18), Isle (18), Foley (15) |
| Some | Baxter (12), Pierz (11), Aitkin (11), Royalton (10), Hillman (9), Little Falls (9), Garrison (9), Milaca (7), Pequot Lakes (7) |
| Weak | Motley (5), Pillager (5), Sauk Rapids (5), Waite Park (4), Randall (3), Crosslake (3), Sartell (1) |
| None | Onamia, Holdingford, Upsala |

### What people are searching
- Local searches exist for the corridor, with **business names inside the suggestions**. That means people search for specific contractors:
  - Little Falls: Wettstein Concrete, Knife River Concrete
  - Brainerd: Thompson Concrete
  - Rice: KB Concrete, Dierkes Concrete, Saldana Concrete, Polished Concrete Plus
  - Pierz: Premium, Premier, Elite Concrete
  - Royalton: Velocity Concrete
- **"concrete hillman" suggestions are about Hillman brand anchors and screws** (a hardware product), not the town. So "concrete Hillman MN" is a weak search; the business name should not rely on "Hillman".
- "Concrete contractor {town}" is the best-supported pattern for the larger cities (St. Cloud, Brainerd, Baxter).
- "Near me" phrases are strong nationally (within 5 mi / 20 mi, prices, small job, open now), meaning Maps pack and local pages matter.
- Cost phrases are strong (driveway, patio, slab, garage floor, pole barn floor, stamped, foundation, sidewalk, per yard, resurfacing). Minnesota-specific cost phrases exist but are few: *concrete driveway cost minnesota*, *concrete slab cost mn*, *concrete vs asphalt driveway minnesota*.
- Pole barn floor cost has strong suggestions: good fit for rural central MN.
- Nothing for *concrete contractor mille lacs*, *concrete contractor lake home*, or *can you pour concrete in winter minnesota*.
- Royalton and Rice are confused with **North Royalton, OH** and **Rice Lake, WI**.

### What it means
- Demand exists, and it is spread across many towns, which is what a directory is built for. No single small town is big.
- The larger cities (St. Cloud, Brainerd, Baxter) have the most searches and the most competition.
- Autocomplete only proves a search exists, not how many. Step 2 in Ahrefs sets the numbers.

## Step 2/3: Ahrefs search volume history (Oct 4)

File: `ahrefs-volume-history-2026-10-04.csv`. This is the monthly **US-wide** volume history (Oct 2024 to Sep 2026) for only 5 phrases, not the full keyword table. It is the chart export, so it answers seasonality (Step 3) and national size, but not keyword difficulty or CPC.

| Phrase | Sep 2026 | Peak month | Lowest month | Same month last year |
|--------|----------|------------|--------------|----------------------|
| concrete contractors near me | 34,769 | 39,050 (Apr 2026) | 9,642 (Dec 2024) | Sep 2025: 30,986 (+12%) |
| concrete leveling near me | 27,572 | 44,513 (Jul 2025) | 2,979 (Jan 2025) | Sep 2025: 26,577 (+4%) |
| concrete repair near me | 6,069 | 13,225 (Jul 2025) | 1,850 (Dec 2024) | Sep 2025: 5,598 (+8%) |
| concrete cost per yard | 4,896 | 6,006 (May 2026) | 3,632 (Dec 2024) | Sep 2025: 4,632 (+6%) |
| concrete driveway cost | 4,423 | 6,616 (Mar 2026) | 2,243 (Dec 2024) | Sep 2025: 3,589 (+23%) |
| All five combined | 91,281 | 121,988 (Jul 2025) | 30,594 (Dec 2024) | Sep 2025: 86,503 (+6%) |

**Read:**
- **The national topic is big.** "Concrete contractors near me" alone is about 35,000 searches a month in the US. That passes the spec's bar of 100+ for group A by a wide margin. This is much larger than anything in the drone project (where the best Group A phrase was 10 to 100 in Georgia).
- **Trend: flat to growing.** Every phrase is up year over year. No decline, so no red flag.
- **Strong seasonality, as expected for the north.** The combined volume in Dec is about 1/4 to 1/2 of the spring and summer peak. "Near me" searches rise from Feb, peak Mar to Jul, and fall in Nov to Jan. The concrete leveling and repair phrases swing the most (15x for leveling). In Minnesota the swing is likely larger because of the winter pour season. Cost searches (driveway cost, cost per yard) swing less, and rise in Mar and Apr, before jobs start. So **cost pages catch customers 1 to 2 months before they hire**, which is the time to publish and rank.
- **These are US totals.** Minnesota is about 1.7% of the US population. A very rough guess: *concrete contractors near me* is perhaps 400 to 700 searches a month in all of Minnesota, and a fraction of that in the Brainerd to St. Cloud corridor. This is an assumption, not data. Ahrefs does not break phrases down by state, so the town phrases (St. Cloud, Brainerd, etc.) in the full table are the real test.

**Still needed:** the full Keywords Explorer table with Volume, KD, CPC and Traffic Potential for all 133 phrases. In Keywords Explorer, enter the list, then use **Export** above the results table (not the one on the volume-history chart).

## Ahrefs overview table (Oct 4)

File: `ahrefs-overview-2026-10-04.csv` (133 phrases, US).

- **Head phrases are big, US-wide:** concrete contractors near me 33,000 (CPC $3.00); concrete leveling near me 26,000 ($6.00); concrete repair near me 6,000 ($4.50); concrete cost per yard 5,000; concrete slab cost 4,500; concrete driveway cost 4,500. KD 0 to 6 for most, but these results are dominated by the Google Maps "Local pack", so low KD is not the same as easy.
- **Minnesota phrases with data:** concrete contractor minnesota 100 (KD 0); concrete contractors mn 60 (KD 51); concrete patio minnesota 40 (KD 3); concrete princeton mn 20; concrete contractors st cloud mn 10 (KD 22, CPC $2.50); concrete contractors central minnesota 10; concrete driveway minnesota 10.
- **Every other town phrase has no data** (under 10 a month or not tracked): Pierz, Little Falls, Brainerd, Baxter, Hillman, Royalton and the rest. Total measured corridor demand is roughly 100 to 200 searches a month.
- **Read:** a town-page directory would get little search traffic by itself. "Near me" searches go to the Maps results. Next check is Keyword Planner (second opinion on small-town volume) and who ranks.

## Brother's numbers (Oct 4)
He does 2 to 4 jobs a week at over $5,000 each. See `interviews.md`. This changes the value math: even a small number of extra leads is worth a lot, as long as he has capacity.

## Metro list, volume history (Oct 4)

File: `ahrefs-volume-history-metro-2026-10-04.csv`. Again the chart export (history for the 5 phrases with the most volume), not the full table. The five phrases that had data:

| Phrase | Sep 2026 | Range over 24 months | Note |
|--------|----------|----------------------|------|
| concrete contractors minneapolis | 206 | 138 to 336 | Steady all year, little winter drop |
| concrete driveway minneapolis | 48 | 25 to 228 | Peaks Jul to Aug |
| concrete contractors cambridge mn | 45 | 0 to 106 | Started in Dec 2025 |
| concrete elk river mn | 22 | 9 to 134 | Peaks in winter and early spring |
| concrete coon rapids mn | 1 | 0 to 105 | Faded to nothing by mid 2026 |

**Read:** even Minneapolis, with 78 miles to the edge of range, is only about 200 searches a month for its best phrase. **Metro town-name searches are small too.** The big numbers in Ahrefs are the "near me" and cost phrases, which are not tied to a town. Numbers for towns jump up and down month to month, so treat them as rough.

Still needed for the full picture: the **table** export (volume, KD, CPC for all 136 phrases).

## Ahrefs overview table, metro list (Oct 4)

File: `ahrefs-overview-metro-2026-10-04.csv` (136 phrases, US). **32 have any volume; 104 have none** (under 10 a month or not tracked).

| Phrase | KD | Searches/month | CPC |
|--------|----|----------------|-----|
| concrete contractors minneapolis | 49 | 200 | $4.50 |
| concrete elk river mn | n/a | 70 | |
| concrete driveway minneapolis | 53 | 60 | $6.00 |
| concrete contractors cambridge mn | n/a | 50 | |
| concrete coon rapids mn | n/a | 40 | |
| concrete driveway minneapolis mn | n/a | 40 | $3.00 |
| concrete contractors st paul mn | 38 | 40 | $4.00 |
| concrete rogers / ramsey mn | n/a | 30 each | |
| concrete patio minneapolis | n/a | 30 | $5.00 |
| stamped concrete minneapolis | n/a | 20 | $3.50 |
| concrete princeton / otsego / cambridge / north branch / isanti mn | n/a | 20 each | |
| concrete contractor minneapolis mn | 52 | 20 | |
| 15 more phrases (Anoka, Maple Grove, Duluth, Buffalo, Elk River contractors, mudjacking minnesota, leveling minnesota and others) | 42 to 55 where shown | 10 each | $0 to $9 |

**Totals (rough):** the 32 phrases add up to about **880 searches a month**. Together with the 7 Minnesota phrases from the first list (about 250), that is about **1,100 searches a month** across all Minnesota phrases that have data. Many overlap, and Ahrefs under-counts small places, so treat this as a floor, not an exact number.

**Read:**
- **Metro difficulty is higher.** Where a score exists, Minneapolis is 49 to 53, St. Paul 38 to 55, Duluth 42 to 49. Small towns have no score because Ahrefs has too little data. The spec's "good" bar is KD under 20, which none of the metro phrases meet.
- **Cost per click is $3 to $6, a few at $9.** That fits the spec's "$5+" bar only at the top end. Fine for contractor jobs worth $5,000 or more.
- **Elk River (70), Cambridge (50), Coon Rapids (40) and the Princeton/Isanti/North Branch/Otsego area (20 each) are the towns near the north metro with some volume**, and they are within 40 to 65 miles of Hillman.
- Most of the demand is **not tied to a town**: "concrete contractors near me" alone was 33,000 across the US.

**Rough income check (assumptions, not data):** 1,100 searches a month, 10% reaching the site = 110 visits; 5% of those call = about 5 leads; 30% become jobs = about 1.5 jobs a month, or around $7,500 of work a month in season. Add the "near me" and Google Business Profile traffic on top. This is a small but real number against his $10,000 to $20,000 weekly sales, which is why capacity matters.

## Step 4: Who ranks (first pass, Oct 4, web search tool)

This is a web search tool, not Google Maps, so it does not show the real map pack.

| Search | What ranks |
|--------|-----------|
| concrete contractor St. Cloud MN | Erickson Asphalt & Concrete (35 years, 500+ Google reviews, HQ Princeton MN, has its own St. Cloud page); Fritz Masonry & Concrete; Viper Concrete & Epoxy; HomeAdvisor page for DR Concrete (4.9); St Cloud Concrete (stcloudconcretecontractor.com, since 2023, "12 communities") |
| concrete contractor Little Falls MN | DRSC Concrete (Rice MN; Little Falls service-area page); Concrete Crafters (templated Little Falls page, 888 number); Heb's (Hillman) ranks with a Little Falls/St. Cloud page; Exa places list shows Eagle Construction (5.0, 3 ratings), Beyond The Curb (4.2, 5 ratings) |
| concrete contractor Elk River MN | DK Concrete (4.7, 22 reviews); TLS Custom Concrete (Twin Cities metro, flatwork, pole barn floors); Erickson (Elk River page); TR Concrete (BBB, commercial) |
| concrete driveway cost Minnesota | Contractor price pages (Cornerstone Concrete, Kali Concrete) plus cost-guide sites (projectcosted, costonce, homeblue) |

**Good signals**
- The top results are **small local contractors with their own sites**, not Angi/Yelp/Thumbtack. A real contractor site with good pages can compete.
- **Little Falls looks weak:** the contractors found there have only 2 to 5 ratings. A contractor with real reviews would stand out.
- Contractor **price pages rank for the cost searches**, so IP Concrete can rank with its own cost pages. The prices found ($8 to $14 per sq ft, a 2-car driveway about $5,000 to $12,000) match his job sizes of $5,000 and up.
- Competitors win with **service-area pages per town** (Erickson, DRSC, Concrete Crafters, St Cloud Concrete). The approach works and is not done in Pierz, Royalton, Hillman etc.

**Bad / caution signals**
- **St. Cloud and the north metro are crowded.** Erickson has 500+ reviews and city pages across the area, including Elk River, 50 miles from Hillman.
- Search results here are mostly **the contractors' own sites**. A neutral directory would be competing against those, and has to give people a reason to use it.
- Heb's, in his own town, already has a site and ranks for Little Falls and St. Cloud.

**Read so far:** it looks more promising to build **a site for IP Concrete itself** (service-area pages, cost pages, reviews, Google Business Profile) than a neutral directory. The directory idea could be added later, or other contractors' leads could be sold once the site ranks.

## Competitors with websites, and directory sites (Oct 4, web search)

**Contractors with their own sites (the ones ranking for town searches)**
- Pierz: Premium Concrete (premiumconcretemn.com, since 2011, serves Brainerd to St. Cloud), Henagin Masonry & Concrete (henaginconcrete.com, serves Pierz, Little Falls, Royalton, Brainerd, Baxter, Motley), Kasella Concrete (kasellaconcrete.com, commercial)
- Brainerd: Brainerd Concrete (brainerdconcrete.com), Precision Concrete and Stone (HomeAdvisor, 5.0)
- Hillman: Heb's Concrete & Masonry (hebsconcretelandscaping.com)
- Rice: DRSC Concrete (drscconcrete.com, city pages)
- St. Cloud: Erickson Asphalt & Concrete, Fritz Masonry & Concrete, Viper Concrete & Epoxy, St Cloud Concrete
- Elk River: DK Concrete, TLS Custom Concrete

**Directory sites**
| Site | What it is | Central MN coverage |
|------|-----------|---------------------|
| Concrete Network USA (concretenetworkusa.com/mn/concrete-contractors) | 4,463 Minnesota contractors, browse by city | City pages for St. Cloud, Elk River, Maple Grove, Forest Lake and others |
| Procore network (network.procore.com/us/mn/concrete) | Contractor listings by city | St. Cloud 170, Elk River, Rogers 74, Monticello 35, Otsego 23, Isanti and others |
| ProsGrade (prosgrade.com/concrete/minneapolis) | Reviews directory with "Featured Pro" and a request form that matches homeowners to contractors | Seen for Minneapolis |
| PavingList (pavinglist.com/mn) | Paving and concrete listings | Elk River 10, St. Cloud 6, Little Falls 5, Maple Lake 4, Pequot Lakes 2 |
| eHardhat | Directory | Hillman, Isle, Onamia pages |
| HomeAdvisor, BBB, Angi | National | Individual contractor pages show up in results |

**Read**
- Directories exist, but they are **thin or absent in the Pierz / Hillman / Royalton / Little Falls area.** No directory has built useful pages for those small towns.
- The directory that comes closest to the lead model is **ProsGrade**: featured listings plus a request form that matches homeowners with contractors. It is only in the metro as far as we saw.
- Pierz alone has 3 contractors with real sites (Premium, Henagin, Kasella). The market has serious local competition. Premium Concrete serves from Brainerd to St. Cloud.

## Step 5: Competitor strength, Ahrefs (Oct 4)

File: `competitors.csv`.

| Site | Town | DR | Organic keywords | Organic traffic / month | Notes |
|------|------|----|------------------|-------------------------|-------|
| henaginconcrete.com | Pierz | 0 | 0 | 0 | ~5 visits; earlier visits likely bots |
| brainerdconcrete.com | Brainerd | 0 | 0 | 0 | Matched from memory |
| stcloudconcretecontractor.com | St. Cloud | 7 | 0 | 0 | 28 visits, 100% bounce; in business since 2023 |
| **ericksonasphalt.com** | Princeton (HQ) | **23** | **318** (36 in top 3) | **1,500** (+385) | 805 visits, traffic value $3.1K/mo; 35 years, 500+ Google reviews, city pages |

**Read**
- **Three of four have no Google traffic at all.** Their backlinks are mostly automated spam.
- **Erickson is the only real competitor found so far.** A 35-year-old regional company with city pages across the area, 2.5K referring domains, and 318 ranking keywords gets about **1,500 organic visits a month**. That is a ceiling for this market: a very established site with a lot of pages gets roughly that, so a new site should expect a fraction of it in its first year.
- Erickson also appears in AI answers (53 responses, 26 in Google AI Overviews), a new place to be seen.
- Compared with the drone project, where the best benchmark site had about 90 visits a month, this market has more search traffic, and a stronger leader.

### Erickson's keywords: what actually brings the traffic (Oct 4)

File: `erickson-organic-keywords-2026-10-04.csv` (558 keywords; 337 ranking now, about 1,470 visits a month).

**Correction to the note above:** the 1,500 visits a month is **mostly asphalt and sealcoating, not concrete.**

| Topic | Keywords ranking | Visits / month |
|-------|------------------|----------------|
| Asphalt, sealcoating, paving | about 100 | about 900 |
| Anything with "concrete" or "cement" | 59 | **about 89** |
| Keywords with a Minnesota town or "MN" in them | 19 | about 41 (mostly tennis courts and Minneapolis asphalt) |

- **One page does a third of it:** `/st-francis-sealcoating/` gets 446 visits for one phrase, *sealcoating near me* (6,600 searches a month, ranking 6th). A page for a small town ranks for a national "near me" phrase. Another town page, `/paving-contractor-saint-francis/`, gets 173.
- **Blog posts bring cost and how-to traffic:** "how much does it cost to pave a driveway" 214 visits (110 keywords); "what is sealcoating made of" 128; "concrete driveway curing time" 67 (36 keywords).
- **Concrete is a weak spot for the strongest competitor.** Its best concrete phrases are about curing time ("how long before you can drive on concrete") and *sidewalk repair near me* (24 visits). Nothing for concrete driveway, patio, or slab cost at any real traffic.
- Its concrete town pages (St. Cloud, Elk River) barely show: *concrete repair maple grove* 1 visit, *cambridge concrete* 1 visit.

**What it means**
- The best-known local competitor gets about **90 visits a month on concrete topics.** That sets a realistic bar: a new concrete site can plausibly reach similar numbers within a year or two. It is low in absolute terms, but each visitor is a possible $5,000 job.
- **What works for them:** town pages, cost articles, and how-to articles. All of those are things a site for IP Concrete can do for concrete, where they have little.
- Cost and how-to content is where the visits come from. Town pages alone bring little, except where a page catches a big "near me" phrase.

## Next actions

1. **Me (Ahrefs Keywords Explorer):** paste the seed list, country US, and record volume, KD, and CPC. Priorities: concrete contractor {St. Cloud, Brainerd, Baxter, Little Falls, Princeton, Foley, Rice, Pierz}, concrete driveway cost minnesota, pole barn concrete floor cost, concrete slab cost mn.
2. **Me (Ahrefs Site Explorer):** run Wettstein Concrete, Thompson Concrete, KB Concrete, Dierkes Concrete, prostarconcrete.com, ehardhat.com. Record DR, referring domains, organic traffic.
3. **Me (phone):** search *concrete contractor Pierz mn*, *concrete Little Falls mn*, *concrete contractor near me* near Hillman and screenshot the Maps pack.
4. **Me:** ask my brother the Step 8 questions (capacity, job size, how he gets work now, towns he serves).
5. **Assistant:** run Step 4 (who ranks) for the top towns and fill `serp-checks.csv` once I confirm.
