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

select company, location, star_rating 
from data_analyst_jobs;





