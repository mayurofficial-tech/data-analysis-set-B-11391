select * from teams;

select * from tickets;
-- S2a
select t1.department,avg(t2.resolution_hours) as avg_resolution_hours  from
tickets t2
join teams t1
on t2.team_id=t1.team_id
group by t1.department
order by avg_resolution_hours desc;


-- S2b
select t1.team,avg(t2.resolution_hours) as avg_resolution_hours  from
tickets t2
join teams t1
on t2.team_id=t1.team_id
group by t1.team
having avg_resolution_hours>24;

-- S2c
select channel,count(t_id) as tickets_count 
from tickets 
where resolution_hours>24
group by channel 
order by tickets_count desc,channel asc
limit 2;

-- S3
select count(*) as missing_count from tickets t1
left join
teams t2
on t1.team_id = t2.team_id
where t2.team_id is null;

