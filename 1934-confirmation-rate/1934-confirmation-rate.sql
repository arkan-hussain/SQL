select 
    s.user_id,
    ROUND(AVG(if (c.action = 'confirmed' , 1, 0)), 2) AS confirmation_rate
from Signups s
left join Confirmations c
    on
    s.user_id = c.user_id
group by user_id;