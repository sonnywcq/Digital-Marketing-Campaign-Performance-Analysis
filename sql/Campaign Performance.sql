use project2;

select
a.campaign_id,
c.name,
count(ad.event_type) as num
from
ad_events ad
join
ads a on a.ad_id=ad.ad_id
join
campaigns c on c.campaign_id=a.campaign_id
where event_type="Impression"
Group by campaign_id, c.name
Order by campaign_id;
