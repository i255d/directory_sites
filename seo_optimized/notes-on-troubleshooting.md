


I looked at Google Search console and it says 


Crawled - currently not indexed
These pages aren't indexed or served on Google 4 pages


Duplicate without user-selected canonical
These pages aren't indexed or served on Google 11 pages

Inbdexed 11 pages.  

How many pages are there right now?  


**There are 21 pages on the site right now, and 20 of them are in the sitemap.** The only one left out is `/thanks`, which is set to `noindex`. I said 20 built and 19 in the sitemap earlier, and that was a miscount.

The 20 sitemap pages:
- **Home (1):** `/`
- **City pages (13):** Atlanta, Gwinnett County, Buford, Dacula, Duluth, Grayson, Hamilton Mill, Lawrenceville, Lilburn, Loganville, Snellville, Suwanee and Winder
- **Info pages (6):** FAQ, how it works, insurance, privacy, small leaks and what to do

What Search Console is showing:
- **Indexed, 11 pages:** these are real pages, so about half the site is in.
- **Crawled, currently not indexed, 4 pages:** Google fetched them and chose not to index them yet. This is common for a new site with similar-looking city pages. It fixes itself as the pages get stronger and more distinct, so there is nothing to fix in the code.
- **Duplicate without user-selected canonical, 11 pages:** this one was a real bug. Pages had no `<link rel="canonical">`, so Google picked its own. The total is 26 URLs against 20 real pages, so some of these are probably the same pages under other URLs, such as the `workers.dev` address or a version without the trailing slash.

**The fix is in `src/layouts/Base.astro`.** Every page now declares its canonical URL. I ran the build and confirmed the tag appears, for example:
- `https://georgiawaterdamagehelp.com/`
- `https://georgiawaterdamagehelp.com/buford/`

**What you need to do:**
1. Deploy the new build to Cloudflare.
2. In Search Console, open the "Duplicate without user-selected canonical" report and click **Validate fix**.
3. Request indexing for the 4 "crawled, not indexed" pages. Google will probably take a few days to a couple of weeks to recheck.

To see exactly which URLs are the duplicates, click into that report and look at the list. I can check whether they are `workers.dev` or `www` URLs and add a redirect from those to the main domain. That would stop the duplicates properly.