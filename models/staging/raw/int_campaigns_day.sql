SELECT 
date_date,
SUM(CAST(ads_cost AS FLOAT64)) AS ads_cost,
SUM(CAST(impression AS FLOAT64)) AS ads_impressions,
SUM(CAST(click AS FLOAT64)) AS ads_clicks,
FROM {{ref("int_campaigns")}}
GROUP BY date_date