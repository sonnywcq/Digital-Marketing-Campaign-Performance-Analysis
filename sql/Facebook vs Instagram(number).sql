SELECT
a.ad_platform,
ad.event_type,
COUNT(event_type) as num
FROM ad_events ad
join
ads a on a.ad_id=ad.ad_id
GROUP BY event_type,ad_platform;