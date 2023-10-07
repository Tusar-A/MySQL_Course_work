-- creating temporary table from the table website_pagevies

create temporary table first_pageview
select
	website_session_id,
    min(website_pageview_id) as min_pageview_id
from website_pageviews
where website_pageview_id < 1000
group by website_session_id;
