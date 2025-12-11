Dagger

`data/` houses all the data, both canonical and derived. Most of this is `.gitignore`d, except `*.meta.*` files, which generally contain SHA hashes.

`data/core` is the canonical data. It's not stored in this repo, since it's ~10-15GB (it's also not available under the same license as the code). Once you have the core data, you can verify that it's the same as my copy by running `./check-core-integrity.sh`. If you need to update the core (e.g., to add files or swap files in/out), you can do that with `./create-core-integrity-data.sh`.

I've included scripts to materalize various pipeline steps, since I think it's helpful 

We mostly use the Dagger cache to keep remuxes etc. around, but we also materialize the cache in case certain steps (e.g., ffmpeg) aren't deterministic. The reason this matters is that it'd be bad if we lost/pruned our Dagger cache, had to re-encode files, had slight changes, and as a result ended up busting everyone's local downloads after generating new metadata. Ideally, of course, everything would be deterministic and we could just derive everything from the `core` directory, but in practice I'm not super confident in this (even though I'm getting identical runs on my local machine, so far).

./build-cache-for-language.sh is good for materalizing the cache for just one language at a time, which is unfortunately necessary because dagger sometimes chokes (crashes or hangs) when building everything at once. Materializing the cache also serves to make the full packaging possible, which is nice (even if not the original intention of having a materialized cache).