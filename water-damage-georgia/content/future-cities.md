# Cities to revisit

Where each city stands, and what to check before building a page. Update the status column as things change.

Last updated: 2026-10-06

Source for the "from R4's list" rows: the "We are proud to serve our local communities" list on R4 Restoration's Dacula page (`content/scrape.md`). That list shows where one competitor says it works. It is not search demand.

## On the site now (`cities.ts`)

| City | Status |
|---|---|
| Dacula | Custom page. On branch `AB#20261004_fix_dacula`. Merge to `main` pending (PR #1). |
| Lawrenceville | Uses the shared template. Research done. Custom page not written. |
| Snellville | Shared template. Research done. |
| Buford | Shared template. Research done. |
| Duluth | Shared template. Research done. |
| Suwanee | Shared template. Research done. |
| Loganville | Shared template. Research done. |
| Grayson | Shared template. Research done. |
| Lilburn | Shared template. Research done. |
| Winder | Shared template. Research done. |
| Gwinnett County | Shared template. |
| Atlanta | Shared template. Biggest and hardest market. Leave as is. |

## Drafted, not built

| Place | Status | Notes |
|---|---|---|
| Hamilton Mill | Draft in `content/Hamilton-Mill-Draft.md` | Needs your review. Then add to `cities.ts` and build as its own page file, like `dacula.astro`. Link it from the Dacula page after it exists. |

## Candidates to research and maybe add

| Priority | Place | County | Why | Status |
|---|---|---|---|---|
| 1 | Norcross | Gwinnett | Gwinnett city, fits "Gwinnett first." Older housing than Dacula, so different causes. From R4's list. | Not researched |
| 2 | Sugar Hill | Gwinnett | Next to Buford and Suwanee. From R4's list. | Not researched |
| 3 | Johns Creek | Fulton | Next to Duluth and Suwanee. Higher-value housing. Worth testing after the Gwinnett pages. From R4's list. | Not researched |
| 4 | Peachtree Corners | Gwinnett | Gwinnett city, not on R4's list. | Not researched |
| 5 | Braselton | Barrow / Jackson / Hall / Gwinnett edge | Near Hamilton Mill and I-85. Not on R4's list. | Not researched |

## Hold for now

| Place | County | Why hold |
|---|---|---|
| Alpharetta | Fulton | Outside the Gwinnett core. Big, crowded market. |
| Roswell | Fulton | Same. |
| Dunwoody | DeKalb | Same. |
| Cumming | Forsyth | Same. Also a longer drive. |
| Forsyth (county) | Forsyth | Same. |
| Gainesville | Hall | Outside the core. Longer drive. |
| Flowery Branch | Hall | Same. |
| Lake Lanier | Hall / Forsyth / Gwinnett | A lake, not a city. A page would be mostly flood and dock material. |

## Before building any new page

1. Ask the call-taking company which cities they will actually drive to. This is on `my-customers/questions-for-them.md` under "Where you will go." A page for a place they won't serve loses leads.
2. Do the research file first, using `content/research-checklist-template.md`.
3. Write the page in `content/` for review before any site change.
4. Keep the voice plain, no unverified claims, no response-time promise, and nothing that sounds like we are the crew.

## Also still open

- Add `PUBLIC_PHONE` and `PUBLIC_CALLRAIL_SWAP` to the Cloudflare build variables, or confirm `.env.production` is enough once PR #1 is merged.
- Write real custom pages for Lawrenceville, Snellville, Buford, Duluth, and the others, one at a time, in the Dacula style.
- Get written response-time answers from the call-taking company.
