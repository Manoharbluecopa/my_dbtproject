with
    city_cte as (
        select
            city, count(city) as count, sum(total_episodes_non_lupa) as sum_of_episodes
        from bigquery-public-data.cms_medicare.home_health_agencies_2013
        group by city
    )
select *
from city_cte
limit 20
