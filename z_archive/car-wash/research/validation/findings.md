# Car wash validation findings (running log)

Same approach as `../../../concrete-hillman/research/validation-spec.md` and the drone project. Started Oct 4, 2026.

## Status
| Step | Status |
|------|--------|
| 1. Autocomplete demand map | **Done** (Oct 4) |
| 2. Volume, difficulty, CPC (Ahrefs) | Not started. List ready: `ahrefs-keyword-list.txt` (84 phrases) |
| 4. Who ranks | First look only (below) |
| 8. Talk to contact | Not started. Questions in `../../README.md` |

## Step 1: Autocomplete (Oct 4)

Files: `Get-Autocomplete.ps1`, `autocomplete-raw.csv` (945 suggestions, 707 unique), `autocomplete-seeds.csv` (146 seeds).

**Searches exist in every town checked.** Winder (50), Auburn (47), Athens, Jefferson, Monroe, Gainesville (45 to 50 each), Duluth, Lawrenceville, Buford, Snellville, Bethlehem, Braselton, Dacula (33), Grayson (24), Hoschton (14). "Car wash {town} ga" gets suggestions everywhere, including brand names (Swifty, WOW in Winder).

**Self-service specific**
- National "near me" phrases are strong: *self service car wash near me*, *coin operated car wash near me*, *diy car wash near me*, *24 hour car wash near me*, *touchless car wash near me*, with "open now" and "within 5 mi" variants. These are people already on the way to wash a car.
- Winder: *self service car wash winder ga* gets 10 suggestions; Dacula: only 4, so self-service is a smaller search in Dacula.
- *24 hour car wash winder / dacula*: nothing.

**Side markets that came up**
- Pet and dog wash near me, truck wash, RV wash, boat wash, motorcycle wash, all with "near me" and "self service" variants.
- **Ownership / investor searches:** *self serve car wash near me for sale*, *how much does a self service car wash cost to own*. Someone is looking to buy a car wash.
- Informational: *how to use a self serve car wash*, *self service car wash tips*, *best touchless car wash soap* (soap and foam cannon products).

## Step 4: Who ranks (first look)
- Winder self-service results: small listing sites (Loc8NearMe, localcarwash.net), Exa-style place pages, and Swifty's own location page. Nobody has a real site for Downtown Car Wash or the 24/7 Car Wash beyond directory pages.
- Dacula results: Yelp, Super Car Wash and Emissions (own site), SuperShine (own site), Whitecap (own site).
- Car wash searches are served by **the Google Maps listings**: hours, rating, directions.

## Early read (not final)
- **A car wash directory has weak money.** A customer is worth $5 to $15 per wash. Nobody pays $75+ for a car wash lead the way they do for water damage, or has $5,000 jobs like concrete. A directory would earn only from ads or small featured listings.
- **Car wash searches are Maps-driven.** People search "near me", look at the map, and drive there. A website rarely decides it.
- **The strongest use of a site is for the contact's own two locations:** accurate Google Business Profiles (hours, photos, payment types, 24/7), plus a simple page per location. That is cheap and likely to help.
- **Niche angles that might pay better (need data):**
  1. A guide for people who want to **buy or own** a self-service car wash (equipment and supplier leads are valuable).
  2. Pet wash, RV and truck wash pages for self-service owners.
  3. Soap and supply affiliate content.
- Everything above depends on what the contact wants and on Ahrefs numbers, which we do not have yet.

## Next actions
1. Run `ahrefs-keyword-list.txt` in Keywords Explorer. Send the table export (file name has "overview").
2. Answer the questions in `../../README.md` with the contact.
3. Check Downtown Car Wash and 24/7 Car Wash: do they have a Google Business Profile, reviews, and a website?
