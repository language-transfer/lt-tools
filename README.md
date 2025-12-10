Dagger

`data/` houses all the data, both canonical and derived. Most of this is `.gitignore`d, except `*.meta.*` files, which generally contain SHA hashes.

`data/core` is the canonical data. It's not stored in this repo, since it's ~10-15GB (it's also not available under the same license as the code). Once you have the core data, you can verify that it's the same as my copy by running `./check-core-integrity.sh`. If you need to update the core (e.g., to add files or swap files in/out), you can do that with `./create-core-integrity-data.sh`.

I've included scripts to materalize various pipeline steps, since I think it's helpful 
