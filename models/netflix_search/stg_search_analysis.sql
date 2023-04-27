SELECT
  *,
  case when imdbrating >= 9 then 'Classic - Must See'
  when imdbrating between 8.5 and 9 then 'Priority Watch'
  when imdbrating between 8 and 8.5 then 'Quality Movie'
  when imdbrating <= 8 then 'Meh' end as watch_priority
FROM {{source('netflix_search','stg_netflix_structured')}}