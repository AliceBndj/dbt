SELECT 
date_date,
ROUND(SUM(operational_margin-ads_cost),1) AS ads_margin,
ROUND(SUM(average_basket),1) AS average_basket,
ROUND(SUM(operational_margin),1) AS operational_margin,
ROUND(SUM(ads_cost),1) AS ads_cost,
FROM {{ref("finance_days")}}
JOIN {{ref("int_campaigns_day")}}
USING (date_date)
GROUP BY date_date
ORDER BY date_date DESC