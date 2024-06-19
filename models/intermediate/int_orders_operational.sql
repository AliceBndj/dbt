SELECT orders_id, 
date_date, 
(ROUND(SUM(revenue),2)) AS revenue, 
(ROUND(SUM(quantity),2)) AS quantity,
(ROUND(SUM(purchase_cost),2)) AS purchase_cost, 
(ROUND(SUM(margin),2)) AS margin,
ROUND(SUM(margin+shipping_fee-logcost-ship_cost),2) AS operational_margin,

 FROM 
{{ref("int_orders_margin")}}
JOIN
 {{ref("stg_raw__raw_gz_ship")}}
    USING (orders_id)
    GROUP BY orders_id, date_date
    ORDER BY orders_id DESC