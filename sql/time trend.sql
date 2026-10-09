SELECT
    DATE(
        STR_TO_DATE(`timestamp`, '%d/%m/%Y %H:%i')
    ) AS event_date,
    SUM(ad.event_type = 'Impression') AS impressions,
    SUM(ad.event_type = 'Click') AS clicks,
    SUM(ad.event_type = 'Purchase') AS purchases
FROM ad_events ad
GROUP BY DATE(STR_TO_DATE(`timestamp`, '%d/%m/%Y %H:%i'))
ORDER BY event_date;