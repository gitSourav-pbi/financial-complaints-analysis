-- Note: Queries written for consumer_complaints table (MySQL syntax)
-- Executed in Kaggle Notebook using pandasql with dataframe 'df'

-- Query 1: Complaints by Product
select product, COUNT(complaint_id) as total_complaints
from consumer_complaints
where product is not null
and substr(date_received,7,4) IN ('2015','2016')
group by product
order by total_complaints desc
limit 10;

-- Query 2: Top 15 Companies by Complaints Volume
select company,count(complaint_id) as total_complaints
from consumer_complaints
where company is not null
and substr(date_received,7,4) IN ('2015','2016')
group by company
order by total_complaints desc
LIMIT 15;

-- Query 3: Timely Response Rate by Company
select company,
count(complaint_id) as total_complaints,
sum(case when timely_response='Yes' then 1 else 0 end) as timely_count,
round(sum(case when timely_response='Yes' then 1 else 0 end)* 100.0/Count(complaint_id),2) as 
timely_response_pctge
from consumer_complaints
where company is not null
and substr(date_received,7,4) IN ('2015','2016')
group by company
order by total_complaints desc

limit 10;

-- Query 4: Rank Companies by complaint volume within each product category
SELECT 
    product, company,
    count(complaint_id) as complaint_count,
    dense_rank() over (
                        partition by product
                        order by count(complaint_id) desc
    ) as company_rank
from consumer_complaints
where product is not null
and company is not null
and substr(date_received,7,4) IN ('2015','2016')
group by product, company
order by product, company_rank
LIMIT 650

