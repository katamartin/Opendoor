# Listings Filter API

[Live Link][live]
[live]: http://km-opendoor.heroku.com/listings?min_price=100000&max_price=200000&min_bed=2&max_bed=2&min_bath=2&max_bath=2

# Possible Improvements

In addition to adding pagination, I would like to expand filtering to cover all
table columns. Then, when building the SQL query, the query string could just be
compared against the `Listing#column_names`.

It would also be desirable to cache the results of recent queries, so that
adding additional filters to an old query could run much more quickly.

I used jBuilder to render the results in GeoJSON. The views take an enormous
amount of time to load compared to ActiveRecord. I believe that it would be
favorable to instead write the GeoJSON by hand.
