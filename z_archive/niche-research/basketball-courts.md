# Basketball courts near me: First Look

Researched October 3, 2026. Autocomplete in `basketball-autocomplete.csv`.

You shoot most nights, including on vacation, and travel with a ball and pump. Four years in. This is a **national “near me” directory** (Frey Chu’s example niche), not a $50 lead site.

## Demand

Autocomplete is exactly the traveler/shooter’s list:
- *basketball courts near me* + indoor, outdoor, **free**, **open now**, **with lights**, walking distance
- *indoor … free / open to the public / drop in*
- *24 hour basketball court*
- Cities: Atlanta, downtown Atlanta, **Dacula**, Lawrenceville, Snellville, **Cape Coral**

The useful filters Maps is weak on: **indoor vs outdoor, lights, free, open now, drop-in gym.**

## Bounty: localbasketballcourts.com (checked Oct 3, 2026)

Looks finished (map, city pages, filters). **The Dacula page is a street-name dump, not a court guide.**

[Dacula page](https://www.localbasketballcourts.com/georgia/dacula) claims **9 courts**. All outdoor. Names are only streets, and several repeat:
- "Dacula Road Basketball Court" × 2
- "Rabbit Hill Road Basketball Court" × 4
- Great River Parkway, Riverpark Drive SE, Evergreen Eve Crossing

No park name. Surface and lights mostly blank. FAQ text is the same as Decatur and Riverdale ("weekday evenings 5–8 pm").

Statewide they claim **1,340 Georgia courts in 283 cities** and only **2 indoor courts in the whole state**. Atlanta is listed as 40 courts. That is OpenStreetMap-style points, not rec centers.

You already proved the gap: your park (3.5 full courts) is missing, and local indoor drop-in is missing. A player who travels with a ball cannot use this site.

**What to beat them on (in this order):** real park names, court count (how many hoops), indoor + hours/fees, lights, nets, a photo, last time someone checked. Start with Gwinnett, then Atlanta, then every city you visit (Cape Coral).

Similarweb (Jun–Aug 2026, PDF in `data/`): **not 20K yet, but growing fast.**

| | localbasketballcourts.com |
|---|---|
| Age | Registered Apr 16, 2026 (~6 months) |
| Visits/month (avg) | **3,182** |
| Change vs prior month | **+161%** |
| From Google | 42% (~1,340/mo) |
| Direct | 32% |
| Pages / visit | 2.32 (people click more than one city) |
| Time on site | 53 seconds |
| Bounce | 54% |
| Countries | US 100% |
| Brand search | 0% (nobody searches the site name) |

Still far from the 30K–80K ad target (~$60–$80/mo in ads today). The growth rate is the story: empty data, six months old, already climbing on *indoor/outdoor basketball courts near me*. Same early curve as TowingIQ, a bit steeper. A complete Gwinnett/Atlanta set could take share while they still have street-name duplicates.

## Who already exists

| Site | Notes |
|---|---|
| Google Maps | Default for “near me.” Does not say lights / nets / drop-in hours well. |
| localbasketballcourts.com | Indoor/outdoor, free, lights. Claims 50 states. Check Similarweb. |
| courtsoftheworld.com | Older global court map. |
| hoppspot.com, playpickup.app, findabasketballcourt.com | Newer apps/maps. Some still show **0 courts**. Thin. |

### Hands-on: HoppSpot (Oct 3, 2026)

Interactive map only. Pins are **mostly parks**. Little detail on each park (no hoop count, lights, indoor hours, nets). **No ads** visible. A finder, not a city guide and not a business yet.

That is the same hole as localbasketballcourts.com: location without the facts a traveler with a ball needs. A page per city with those facts is the product, not another map.

There is a bounty if the existing maps are incomplete or ugly. Maps is still the main competitor.

## Data

Public and scrape-friendly in a legal sense (your own compilation):
- City parks GIS / OpenStreetMap (`leisure=pitch`, `sport=basketball`)
- YMCA / rec center drop-in pages (hours change; that is the hard part)
- Your own visits (photos, “nets were up,” “lights until 10”)

Outdoor park courts are easy to list. **Indoor drop-in is the scarce, valuable layer.**

## Money

Parks do not buy leads. This is **ads + maybe affiliates** (balls, pumps, outdoor hoops, travel).

Frey Chu’s rule: if you can get **10K–50K+ visits/month** on “near me” pages, ads can do **$500–$2,000/mo**. $3K–$5K needs more traffic or a second niche (tennis, pickleball) on the same template.

## Your edge

Not “another OSM dump.” **Courts that work when you are traveling with a ball:**
- Outdoor after dinner, with lights
- Indoor drop-in when it rains or you are in a hotel
- Cape Coral + Atlanta + every city you already visit
- Notes Maps will not have: rim height, nets, crowded after 6, parking

That is the Atlanta Trails extra, at directory scale.

## Compared to the other ideas

| | Water damage | Cape Coral guide | Basketball courts |
|---|---|---|---|
| Value per visitor | High | Booking % | Ads (low) |
| Repeatable | City × trade | Next beach town | **Every US city, same template** |
| Your unique input | Local sales | 10 years there | You already scout courts on every trip |
| Fits $1K–$5K | Fewer visitors | Medium | Needs 30K–80K visits (Frey Chu model) |

Best as the **first ad-directory** if Similarweb shows localbasketballcourts.com or courtsoftheworld.com in the 20K–80K band and looking dated. Not instead of GeorgiaStormRoof.

## Parks + water on the same Dacula pages? (Oct 3, 2026)

Yes, as **fields on each place**, not as three separate sites.

People already search the combo and the extras:
- *parks with basketball courts near me* (+ lights)
- *gwinnett parks with basketball courts*
- *dacula fishing spots / fishing pond*
- *lakes near dacula to swim*
- *splash pad dacula* / *duncan creek park splash pad*
- Named parks: Tribble Mill (hours, waterfall, trails), Harbins, Duncan Creek
- *sand volleyball dacula* / *volleyball courts dacula park*
- *skate park dacula* / *skate park gwinnett county*
- *sand volleyball near me* (free, league, kids)

Gwinnett Parks and Rec owns the official “Dacula parks and rec” searches. They will not write hoop count, lights after 7, “nets were up,” or which pond is worth a rod.

**Do this:** one page per park (Duncan Creek, Harbins, Tribble Mill, your 3.5-court park, etc.) with a checklist:
- Hoops (how many full courts)
- Indoor / outdoor
- Lights
- Splash pad
- Sand volleyball
- Skate park
- Pond / lake / fishing
- Restrooms, parking, hours

**Don't do this:** a national “all US parks” dump or a thin lakes directory. That is VisitFlorida / county GIS again.

Dacula/Gwinnett is the seed. Same template later: Cape Coral parks + canals + a hoop. The basketball *city* page can roll up every park that has a court.

## Is Dacula or Gwinnett enough traffic? (Oct 3, 2026)

**Dacula only: no.** A few parks and a few hundred searches a month. Fine as the first pages you write. Not a $1K site.

**Gwinnett + all amenities: better, still not 30K–80K visits.** You pick up extra phrases per park (hoops, splash pad, sand volleyball, skate park, fishing, “parks with basketball courts”). Gwinnett has ~1M people and a large parks system (Dacula, Lawrenceville, Snellville, Duluth, Suwanee, Buford, Grayson, Auburn, Braselton edge). That is a real local guide, closer to **2K–8K visits/mo** after a year if the pages are complete — enough to prove the template, not enough for $1K–$5K from ads alone.

**How to use the county**
1. Build every Gwinnett park you can stand on (start Dacula, then Lawrenceville / Harbins / Tribble Mill / Duncan Creek).
2. One roll-up page per city plus a Gwinnett hub.
3. Copy the same park-card to the next metro ring: Barrow, Walton, Hall, Forsyth — then Cape Coral when you visit.
4. Keep GeorgiaStormRoof / water damage as the high-value sites. Gwinnett parks is the directory you can finish with knowledge you already have.

Combining amenities **raises how much of Gwinnett you capture**. It does not turn one county into a national traffic number. The 30K–80K target is “this template in many cities,” not “Dacula plus volleyball.”

## Next

1. [ ] Keyword Planner US: `basketball courts near me`, `indoor basketball courts near me`, `outdoor basketball courts near me`, `basketball courts atlanta`
2. [ ] Similarweb: localbasketballcourts.com, courtsoftheworld.com, hoppspot.com
3. [ ] This week: list every court you already use in Gwinnett + the last Cape Coral trip (name, indoor/out, lights, free)
