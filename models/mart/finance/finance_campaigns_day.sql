SELECT 
date,
(operational_margin - ads_cost) AS ads_margin,
avg_basket,
operational_margin,
ads_cost,
ads_impression,
ads_clicks,
nb_prod_sold,
revenue,
purchase_cost,
shipping_fee,
log_cost,
ship_cost,
FROM {{ref("int_campaigns_day")}}
JOIN {{ref("finance_days")}}
USING (date)