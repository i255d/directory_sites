# Movie lists by year / Oscars / genre: First Look

Researched October 3, 2026. Autocomplete in `autocomplete.csv`.

## The idea

Programmatic pages:
- Most popular / best movies of 2020, 2016, 1998, …
- Academy Award nominees and winners by year (and by category)
- Genre × year: best sci-fi 2020, best horror 2020, …

Same build as a towing database: one template × years × genres × award types.

## Demand

Autocomplete is full for every year and combo we tried:
- *best movies 2016 / 1998 / 2024*, *imdb*, *rotten tomatoes*, *reddit*, *letterboxd*
- *most popular movies 2020 to 2026*, *2010 to 2020*
- *oscar nominees 2020 best actor / actress*, *oscar winners by year best picture*
- *best sci fi movies 2020s*, *best horror movies 2020 to 2026*

People search this constantly. Recent years get more searches than 1998. Genre pages and Oscar category pages multiply the list.

## Who ranks

**"Best movies of [year]":** Rotten Tomatoes, IMDb, Metacritic, IndieWire, IGN, RogerEbert, ScreenRant, Wikipedia. Google's own list / AI answer often sits on top.

**"Best sci-fi 2020":** Rotten Tomatoes editorial, IGN, Paste, Taste of Cinema, ScreenRant. Same pattern for horror.

**Oscars:** oscars.org, Wikipedia ("90th Academy Awards"), IMDb, Variety.

You would be a new data site against the brands people already trust for "best of."

## Data is free and easy

- [TMDB](https://www.themoviedb.org/documentation/api) API: year, genre, popularity, ratings, posters (attribution required)
- Wikipedia / Oscars for nominees (public)
- Box office: Box Office Mojo (careful with reuse)

A site of 100 years × 15 genres × Oscar categories is a weekend of scripts, not 17 years of hiking.

## Same trap as towing

| Signal | Movie lists | Towing |
|---|---|---|
| Search volume | Huge | Huge |
| Data | Free API | Free PDFs |
| Easy to generate thousands of pages | Yes | Yes |
| Who gets the clicks | IMDb, RT, Wikipedia, Google | Dealers, Google, C/D |
| Value per visitor | Ads + streaming affiliate (~pennies) | Ads (~pennies) |
| Google answers it | Yes ("best of 2020" list) | Yes ("6,500 lbs") |

A thin "top 20 sci-fi 2020 from TMDB popularity" page looks like the sites Google's helpful-content updates hit. TowRatings had 19,000 pages and little traffic.

## Money

- Display ads: need 30K–100K+ visits/mo for $1K–$2K
- **Streaming affiliates** (JustWatch, etc.): "where to watch" is the extra that a raw list lacks
- No $50–$150 leads

## What would have to be different

Not another popularity sort. Something a dump from TMDB cannot fake:
- **Where to stream this week** (changes; IMDb/RT do this too)
- **One ranked list that names its rule** (box office vs critic vs audience) and sticks to it
- **Oscar pages that are clearer than Wikipedia** (still hard; Wikipedia is good)

Even then, ScreenRant and RT publish the same year-end pieces with staff and brand.

## Verdict

**Do not start here.** Demand is real and the build is easy, which is why every movie brand already did it. Same shape as towing: big searches, cheap visitors, incumbents and Google take the clicks.

Oscars-by-year is the cleanest data (official, finite) and the most owned by Wikipedia and oscars.org.

## Next (only if you still want numbers)

- [ ] Keyword Planner US: `best movies 2020`, `best movies 1998`, `oscar nominees 2020`, `best sci fi movies 2020`, `best horror movies 2020`
- [ ] Similarweb: imdb.com is huge; better check a *small* list site (tasteofcinema.com) to see if independents get 30K+
