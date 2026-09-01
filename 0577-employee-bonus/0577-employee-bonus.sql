select 
    e.name,
    b.bonus
from
    employee e
left outer join bonus b
    on
    e.empid = b.empid
where
    bonus < 1000 or bonus is null


