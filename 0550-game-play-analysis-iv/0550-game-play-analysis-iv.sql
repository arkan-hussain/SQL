with login as (
    select
        player_id,
        datediff(event_date,min(event_date) over(partition by player_id))=1 as day_diff
        from activity
)
select 
    round(
        sum(day_diff)/ count(distinct player_id),
        2) as fraction 
from login