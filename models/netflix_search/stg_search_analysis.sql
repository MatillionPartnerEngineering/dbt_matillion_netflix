SELECT
  *,
  case when imdbrating >= 9 then 'Classic - must see'
  when imdbrating between 8.5 and 9 then 'Priority watch'
  when imdbrating between 8 and 8.5 then 'Meh'
  when imdbrating <= 8 then 'Waste of time' end as watch_priority
FROM {{source('netflix_search','stg_netflix_structured')}}