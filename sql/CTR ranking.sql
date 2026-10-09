select
a.campaign_id,
c.name,
sum(event_type='Click')/sum(event_type='Impression') as CTR
from
ad_events ad
join
ads a on a.ad_id=ad.ad_id
join
campaigns c on c.campaign_id=a.campaign_id
Group by campaign_id, c.name
Order by CTR DESC;