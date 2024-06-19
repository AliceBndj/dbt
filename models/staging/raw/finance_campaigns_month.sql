SELECT 
FORMAT_TIMESTAMP('%Y-%m',date_date) AS month,
ROUND(SUM(operational_margin-ads_cost),1) AS ads_margin,
ROUND(SUM(average_basket),1) AS average_basket,
ROUND(SUM(operational_margin),1) AS operational_margin,
ROUND(SUM(ads_cost),1) AS ads_cost,
FROM {{ref("finance_campaigns_day")}}
GROUP BY month
ORDER BY month DESC