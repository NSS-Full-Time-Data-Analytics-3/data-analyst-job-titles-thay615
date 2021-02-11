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

select location as state, avg(star_rating) as avg_rating
from data_analyst_jobs
where star_rating notnull
group by location
order by avg_rating desc;
--#6 NE

select count(distinct title)
from data_analyst_jobs;
--#7 881

select count(distinct title)
from data_analyst_jobs
where location = 'CA';
--#8 230

SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > '5000'
AND company IS NOT NULL
GROUP BY company;
--#9 40

select company, avg(star_rating) as ratings
from data_analyst_jobs
where review_count > 5000
and company is not null
and star_rating is not null
group by company
order by ratings desc;
--#10 

select count (distinct title)
from data_analyst_jobs
where title like '%Analyst%';
--#11 774, 754 ilike and like

select distinct(title)
from data_analyst_jobs
where title not iLIKE '%Analyst%'
and title not iLIKE '%Analytics%';
--#12 4 and Tableau

select *
from data_analyst_jobs
where days_since_posting > '21'
and domain is not null
order by domain desc
limit domain 4;
--Transport and Freight, Telecommunications, Retails

SELECT DISTINCT(domain) AS industry,
	COUNT(title) AS num_of_hard_to_fill_jobs,
	MAX(skill) AS skill,
	AVG(days_since_posting) AS days_since_posting
FROM data_analyst_jobs
WHERE domain IS NOT NULL
AND skill LIKE '%SQL%'
AND days_since_posting > 21
GROUP BY domain
ORDER BY num_of_hard_to_fill_jobs DESC;
