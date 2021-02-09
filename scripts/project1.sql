select *
from data_analyst_jobs;

select count (*)
from data_analyst_jobs;
--#1: 1793

select company
from data_analyst_jobs
limit 10;
--#2: ExxonMobil

select count (*)
from data_analyst_jobs
where location = 'TN' 
or location = 'KY';
--#3: 21, 27

select count (*)
from data_analyst_jobs
where location = 'TN'
and star_rating > 4;
--#4: 3

select count (*)
from data_analyst_jobs
where review_count between 500 and 1000; 
--#5: 151

select company, location as state, star_rating as avg_rating
from data_analyst_jobs
where star_rating is not null
order by avg_rating desc;
--#6 GA...........

select count(distinct title)
from data_analyst_jobs;
--#7 881

select count(distinct title)
from data_analyst_jobs
where location = 'CA';
--#8 230

select count (*)
from data_analyst_jobs
where review_count > 5000;
--#9 185

select *
from data_analyst_jobs
where review_count > 5000
order by star_rating desc;
--#10 4.199

select count (*)
from data_analyst_jobs
where title like 'Analyst%';
--#11 12

select title
from data_analyst_jobs
where title = 'Analyst%'
AND title = 'Analytics';
--#12 0

select *
from data_analyst_jobs
where days_since_posting > '21'
and domain is not null
order by domain desc
limit domain 4;
--Transport and Freight, Telecommunications, Retails

