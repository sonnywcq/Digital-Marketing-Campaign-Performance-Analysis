SELECT

u.user_age as age,

COUNT(*) as purchases

FROM ad_events e

JOIN users u

ON e.user_id=u.user_id

WHERE event_type='Purchase'

GROUP BY age;