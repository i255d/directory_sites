# Validation Spec: Is a Concrete Lead-Gen Directory Worth Building? (Central MN)

Status: Draft, October 4, 2026. Adapted from `../../drone-roof-inspections/research/validation-spec.md`.

## 1. Purpose

My brother runs a successful concrete business in Hillman, MN and has no website. Before building a directory/lead-gen site for him, find out with real evidence:

1. **Do people search for concrete services in the Brainerd to St. Cloud corridor?** (demand)
2. **Can a new site rank on page 1 (top 5), and show up in the Google Maps pack?** (difficulty)
3. **Is a lead worth money?** (value)
4. **Can he handle more work, and are there other contractors to list?** (supply)
5. **Can this become a template for other trades and areas?** (scale)

### Decisions
| Decision | Meaning |
|----------|---------|
| **Go** | Build the site as planned |
| **Pivot** | Different angle (e.g. just a simple site and Google Business Profile for him; a different trade; a wider area) |
| **No-go** | Not worth building |

## 2. How this differs from the drone project

- **The first customer is known.** My brother is the buyer and the first provider. A drone directory needed a "who pays?" answer; here the answer is him (plus other contractors later).
- **Concrete is a bigger, steadier market** than drone roof documentation: driveways, patios, slabs, pole barn floors and foundations are $3K to $20K+ jobs, and everyone in a small town needs concrete eventually.
- **But concrete is seasonal** in Minnesota (roughly April to November) and local: most customers search "near me" and pick from the **Google Maps pack**, so his Google Business Profile matters as much as the website.
- **Small towns have tiny search volume.** Keyword tools under-count them. The directory's value is adding up 20+ small towns.
- **Capacity is the limit.** If he is already booked, more leads don't help unless leads can be sold or passed to other contractors. Ask him.

## 3. Rules
- Set pass/fail rules before looking at results.
- Record everything in `validation/` files.
- Separate facts from guesses.

## 4. Resources
| Resource | Use | Who |
|----------|-----|-----|
| Google autocomplete (`validation/Get-Autocomplete.ps1`) | What people type | AI assistant |
| Web search | Who ranks | AI assistant |
| **Ahrefs** (Keywords Explorer, Site Explorer, Content Gap) | Volume, KD, competitor traffic and keywords, links | Me |
| **Similarweb** | Traffic for bigger sites and directories (small local sites usually show nothing) | Me |
| Google Keyword Planner | Volume ranges and CPC | Me |
| Google Trends | Seasonality | Me |
| Google search on phone near Hillman | Real Maps pack results | Me |
| Census data | Town populations | AI assistant |
| Conversation with my brother | Capacity, job sizes, how he gets work, towns he serves | Me |

## 5. Keyword groups
**A. Hiring a concrete contractor** (the money keywords)
- concrete contractor [town] / near me / minnesota
- concrete driveway / patio / slab / garage floor / foundation / sidewalk + [town]
- stamped / decorative concrete, concrete repair, concrete removal, concrete leveling

**B. Researching cost** (earlier in the buying process)
- concrete driveway cost, concrete slab cost, pole barn concrete floor cost, cost per yard (Minnesota)

**Towns:** Brainerd to St. Cloud corridor (Hillman, Pierz, Little Falls, Royalton, Rice, Holdingford, Upsala, Randall, Motley, Pillager, Brainerd, Baxter, St. Cloud, Sartell, Sauk Rapids, Waite Park, Foley, Princeton) plus Mille Lacs side (Onamia, Milaca, Isle, Aitkin, Garrison) and lake towns (Crosslake, Pequot Lakes). See `Get-Autocomplete.ps1` for the exact list.

## 6. Steps
1. **Autocomplete demand map** (assistant). Output: `validation/autocomplete-*.csv`. Good: "near me", "cost", and town names appear; many corridor towns return suggestions. Bad: nothing for most towns.
2. **Search volume and CPC** (me, Ahrefs Keywords Explorer and/or Keyword Planner). Location: Minnesota, and also the central MN counties if possible. Good: group A phrases 100+/month statewide, CPC $5+. Normal: single-town phrases at 0 to 10.
3. **Seasonality** (Google Trends). Expect a spring to fall peak. Bad only if declining.
4. **Who ranks** (assistant + me). For 20 to 30 searches, record the top 10 and Maps pack. Good: small local sites, thin pages, directories like eHardhat ranking for small towns. Bad: Angi, HomeAdvisor, Yelp, Thumbtack filling the top 5 everywhere.
5. **Competitor sizing** (me, Ahrefs Site Explorer + Similarweb). Domain Rating, referring domains, organic traffic for the competitors in `../README.md`. Good: small sites, low DR. Many local contractors likely have no site or a weak one.
6. **Difficulty (KD)** (me, Ahrefs). Good: most under 20.
7. **Bounty site**: pick one beatable site with some traffic. Study its pages and keywords.
8. **Talk to my brother** (and 2 to 3 other contractors): jobs per season, average job size, how he gets customers now, capacity, how much a lead is worth, whether he would take leads from other towns, whether other contractors would pay for leads or listings.
9. **Income model**: leads per month x close rate x profit per job.
10. **Optional test**: $100 to $300 Google Ads or a Google Business Profile for him, to measure real cost per call.
11. **Template check**: repeat steps 1 and 4 for another trade or region.
12. **Decision**: scorecard below.

## 7. Scorecard (1 to 5 each)
| Factor | Evidence from | Score |
|--------|---------------|-------|
| Search demand (group A, across the corridor) | 1, 2 | |
| Value per lead (job size, CPC) | 2, 8 | |
| Rankability (who ranks, KD, Maps pack) | 4 to 6 | |
| Competitor weakness | 4, 5, 7 | |
| Season and trend | 3 | |
| Supply / capacity (him plus others to list) | 8 | |
| Income model works | 9 | |
| Repeatable | 11 | |
| Fit (his willingness, time to build) | All | |

Rough guide for a 9-factor scorecard: 38 to 45 Go, 28 to 37 Pivot, under 28 No-go.

## 8. Data files (`validation/`)
`autocomplete-raw.csv`, `autocomplete-seeds.csv`, `keywords.csv`, `serp-checks.csv`, `competitors.csv`, `bounty-site.md`, `interviews.md`, `income-model.md`, `decision.md`, `findings.md` (running log).
