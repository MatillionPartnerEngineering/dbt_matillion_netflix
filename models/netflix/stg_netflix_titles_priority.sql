SELECT
  *,
  case when imdbrating >= 9 then 'Must Watch'
  when imdbrating between 8.5 and 9 then 'Will Watch If I Get the Time'
  when imdbrating < 8.5 then 'Meh' end watch_priority
FROM {{source('netflix_source','stg_netflix_search')}}
