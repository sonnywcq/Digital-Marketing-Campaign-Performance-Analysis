select
a.ad_type,
sum(event_type='Click')/sum(event_type='Impression') as CTR,
sum(event_type='Purchase')/sum(event_type='Click') as CVR
from ads a
join
ad_events ad on a.ad_id=ad.ad_id
group by ad_type;