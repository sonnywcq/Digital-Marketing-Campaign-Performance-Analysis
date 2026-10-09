select
a.ad_platform,
sum(event_type='Click')/sum(event_type='Impression') as CTR,
sum(event_type='Purchase')/sum(event_type='Click') as CVR
from ad_events ad
join
ads a on a.ad_id=ad.ad_id
Group by ad_platform;